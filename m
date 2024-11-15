Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 580669CD56C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 03:37:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 207DC10E2C7;
	Fri, 15 Nov 2024 02:37:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FwZVf+37";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D4610E131;
 Fri, 15 Nov 2024 02:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731638266; x=1763174266;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FCpDfWbDxJHw/RLVcyo3RE+P5Fm3kKmwW+2oPFmRuk4=;
 b=FwZVf+378c3GC5/nfXintZSMxgidtUx6ucxP9JhfHHcedRjusIBgkaoV
 gko56J+pyjU7qXnhxvS0KZUvNWO3/aKkkOD6WI7lwTtwkEX9rkm89Glgn
 82vZ/kfBD+LFg6T+0eMT+xPV8R6fQ5QISI4PBUIwuxGUnBIKrRynHnxGh
 Kyr7shFsYIqw3B7/dH87UH12rMxyU4PlwA3BNYn34V/oB7jEq+g/1rNdr
 aBRi//R4vhVju5hPRhwagTGPpMErasHSTy/pewc4L02xqZYStU++Fohy0
 BlRmoYCdPk2Up2jKiO+WmVeUOP6RFX7kV7NbeLg1GzNCsgfMQkQhvzWLq Q==;
X-CSE-ConnectionGUID: z5ls9T1QQ7q4AlPzSsjJVA==
X-CSE-MsgGUID: j5Sf34ptT4uj7YRuxi0EKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="35542750"
X-IronPort-AV: E=Sophos;i="6.12,155,1728975600"; d="scan'208";a="35542750"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 18:37:46 -0800
X-CSE-ConnectionGUID: MrZnytbxT0elIrOo+RJqAQ==
X-CSE-MsgGUID: MWV5mEmvTlOWOWbxiMRLoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,155,1728975600"; d="scan'208";a="125922742"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 18:37:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 18:37:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 18:37:42 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 18:37:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kXq12mQxv95HWO2Aejst7oONWgZ0lpmn1zR3t3/5rl4Jz6T9M44gmosHmqTbiYQNenQLABQobgCLvU+rKbvox2PKsAUxX5V8tavJNo/w2IB6973qvlW+SWTy/CK4XHSqwXXdBvDIdbHgxYhZeV1nTbZQ3s2GUHRpujALLvX44aOtFu5b7dgg3hUNXGiLdyzS5lMUyDe2Pj6uwxTyDqekR3LnwfpgoTJv1vw7EnucBeDWkhqTroLdtaETw9NZyFsqUQ/Qjqu1mFTOoaxoUEnTS31K5EAz8yPtz52MMVpnSKSy99SiosorvT3aKW8X/SiCW6nOP9ytxbGlpth+gyxHXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FCpDfWbDxJHw/RLVcyo3RE+P5Fm3kKmwW+2oPFmRuk4=;
 b=LN+mf7PK0Tb/o9ta605w2Npl06biXYLGRjEF3vpdA6tzKmQ4glOtEEzpS2ETEgUkgvdb8hOVRcAsziKV8ZCQnmQKECsLe2sRBYwzsDqQ7plswVqTU2Ol36PulP18gMWpcBsXpjILUTfUqYVoTMPr2Qwy49p7sbNNp3FxO30j9vA+Tk1bNmUGxx8zlM9NF+1qqlpFOVRwZMw6t5HIPt7bByBWc50LX1wnXbeujKOmKcTc26W91cDcn936p+IrFlKgQ74nrjLGZPHsw6rDccp/3j4anFx1TZUkFKaVbXCEjBxOLVZer2MG5nkXKcFp61vCWUEDe/WL/EbJRqhjBgZgZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH0PR11MB5297.namprd11.prod.outlook.com (2603:10b6:610:bc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.19; Fri, 15 Nov
 2024 02:37:40 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8158.013; Fri, 15 Nov 2024
 02:37:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Topic: [PATCH 2/2] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Index: AQHbNk4KW8lFohLSyk251R27ixjeo7K20M0AgADOa0A=
Date: Fri, 15 Nov 2024 02:37:40 +0000
Message-ID: <SN7PR11MB6750792C3A262366329D1CB4E3242@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241114043040.1396947-1-suraj.kandpal@intel.com>
 <20241114043040.1396947-2-suraj.kandpal@intel.com>
 <0f50f6f9ff11e17567a0041ec0f97bdf8c340268.camel@intel.com>
In-Reply-To: <0f50f6f9ff11e17567a0041ec0f97bdf8c340268.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH0PR11MB5297:EE_
x-ms-office365-filtering-correlation-id: 74b516ad-7141-4fc4-b521-08dd051e7984
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bDYvZFVOM0hqbzBJVTM2QWt4YlQvbkFMS2JVSm1sUlFGWjdOb3ZRQ29Bc1NR?=
 =?utf-8?B?TXlRU0tuWktNZ0hERVd5c25BQXF6YVpjRVB3K2k1enV3cmNRMjhWeHdoYXN0?=
 =?utf-8?B?T1BUamUvZGpSMFlCNk5qcDIwWk9peHdNaUxKT3JUS0J6YndYaWthTXFnV1pR?=
 =?utf-8?B?VkJwNkdZR0RJMVVBSTdJVUdCc1JjRkF4eHMySGxZUE4xUzBpVmRCT2VESW56?=
 =?utf-8?B?NDJFTkxxZjdwTDVsMTBLK1JPRmVEQTNJTCtoYUkzSERpamY3Yk1ZayswdGVK?=
 =?utf-8?B?eVZvbVpVVGNQUWNjNlBqeGd4ZStyRXQ1RVdMa1R2MStZZG9oOHNhdXhUalNw?=
 =?utf-8?B?T2JaSkxBdzlwekJaUDczbXphU1JxUkE0eGQzNjhoc2d2dUJOM255emhDSDhN?=
 =?utf-8?B?TnFDV3RjU09zbWNjYkE2cWNuK29zVEF6RHNDL2FpRk1JTVBZdisxZEVScGtO?=
 =?utf-8?B?bW5KdGVmbGV5V3hwVEFPTWdXM1doYWVOSVpRN28yNElGc09rYkFzRUxlcTNB?=
 =?utf-8?B?NUl0S2VyVS9uMUJHb1VrMHBzNU9Fc2ZqMENmK2Z2OXRjNWVaZWVkWElleWFX?=
 =?utf-8?B?VlgxR0dDcjVLanpkMUNXNmtUa1kxVjg4bnArTFlpeFVDeHB0bEJMMTVlVkMw?=
 =?utf-8?B?TGcwSnRsd2treDVhYTEzUCtFT1dLMmt5VFgvQ3hJVUd5TzJVVXRuUWZoNEFt?=
 =?utf-8?B?TGVVRktVZ2RHUHJLNnkvQ216STBWVVRnbjZUQmtoUThSVXlCc2xzVUN1SXgr?=
 =?utf-8?B?T1I3NGU4cjlFRkFxeDZiZFMvV041ZEVxU3hFQ1V6RHZyK0tBK0JKOXJtbkcr?=
 =?utf-8?B?R01NY3hISWZ4VWJja2pPV3pqZlhvSGswUzE4cS9qTjF6aThmN0dCUU5MNlF4?=
 =?utf-8?B?RlptaS9QNXJrYkhDNXRQdVZ5ZklubWVUUGVmUzJlU1U2aEorVG4yRlJPRkdZ?=
 =?utf-8?B?Mk9zdUdoNlFuSm5Pd1RhclpOdzMwYUpVSXdsRDJ4VmErL2J5UmdlWUtOMng2?=
 =?utf-8?B?VzRyejJTTVorMTRTU1VSMmFta0JiR2ROczhvVjlJM1QwS01JdG5WRjU1Ykly?=
 =?utf-8?B?MWoyTjlSNS9KM3A3dnkrVGxxalFkS1JTaGlwMExRSnJmU09QYzJoZER5a3lM?=
 =?utf-8?B?K2Nxb1d1NmRoQ3M5T0VhZFR3WVZnRWEwM05nV2NMdlE5UXcyZkZ4K0VzeUU3?=
 =?utf-8?B?bnpPZzhZaTFzcnRNRndCSW9ydjlncXF1TWhkSG13NXlob3F5N3lRZ3cwZTlo?=
 =?utf-8?B?N1k2YXhLL1FUeC9TMzNGQnNXOFVSRlZkM0ZBQkk4U0VpN3dhYmdRNFpkb21q?=
 =?utf-8?B?V0pBcXNNaTNhSkdvb21KTnlPcnFXOFRiUmNaK0F1QTdYNVd0Y2pZUjNrUmM0?=
 =?utf-8?B?V21PNkFVcUhkNTNib0lWVlRjK0hNSk5Ra0dKWnRhTFFsODJJL2RJeFV1azY0?=
 =?utf-8?B?SWh2ejJlZ2loc2ViWTZVSjcvTDNLY0E2TkZsVnhnTFdwNUpvdXdTaGdRTFRO?=
 =?utf-8?B?cnBRNkpqTlFZYS81c1ZZQVd4VkJmYXdEQzQ3OW5CM21QMHdSMElidlRNaDNN?=
 =?utf-8?B?WjB5NFZuM0JoWEpBczF5UDF3QTlpemYrUjNjWUNDd1pqOFVaV1ZiL29IWXJ5?=
 =?utf-8?B?SSt0RTJENU9pY2dhcXJIN0dZY2l3eWdlZ2NMSUs0OTNKZVZCWWpoSHdEL0Iz?=
 =?utf-8?B?OUFpako5UWc1M01iL0hOQXRJZVRjWWc0VWRORFFLSUVnVnNhMU5oMFFHemE5?=
 =?utf-8?B?V3hJcmpSVjh4OVpvbG9kbmZLTjFMWVZocnFxRHlFR3lUSWhHZWl4Qlc4bVZI?=
 =?utf-8?Q?QE/+LZvluvSimUGhoTZPx7UCKFrrNxUl6Yw1c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b1hqUU5veWc0dDRsTWFHVkw4Z3R6NnpjSTU5MzZrRHdqOEVhNlpLc0doc2w2?=
 =?utf-8?B?Sm9WZklJRjVTRFlUci93T2Y3QTBxbTFJZEx1VjNDQzRLT1V0NzJpV2d1Njdl?=
 =?utf-8?B?dGpnTVl3R1I1YU5ad2RkTGRIWU5TVWtEVVNqMGhHOVpKRUpSL1ArRStWekpB?=
 =?utf-8?B?VTcxdWFYRk5PdXYyTGV5a0hFSzFubCs2UHVLekVqemYyMFRuemdGTDFacjlF?=
 =?utf-8?B?Q2hQMEFydFFrT05udlYxdUJIa3JMeXR5RXVDZU9LbGgrd3QxTDJJVTNib0Nn?=
 =?utf-8?B?aGwwa2pzeWhhYzhtN0dtNHh1S042d20vN3VOdWd0MDhib3liY1FQNXhlZEs2?=
 =?utf-8?B?a3FyV05PYmxLSnhVZ21ETGxpTlRqNU02RmNsNCt1d2dqbFo0elVKQU1KTDNq?=
 =?utf-8?B?dVE3S3BuTnBUT2hDcHR1ejMyT1BYUDlBeVhtTnRGbWNyaDJvTGdFcU5kSk9m?=
 =?utf-8?B?MEpGckhDWC9SR0tmbEtvNnF1WW5uUDFoeVlwYmhQeVZRVno1eEV6Rk1ucU9t?=
 =?utf-8?B?U1hQUjhNZlArbERoK1RkdnpGN1FsdkdtUFU2Ly9zM1ZMaTljQ2FzcGhDM0ZT?=
 =?utf-8?B?TlFmeGxhYktPQW8reHFKYm9VMjNFelVxTC9WUTlPengyN1k4N0lrSVpVT2V4?=
 =?utf-8?B?YWg1TmtlRU5yK0t5Y05JeVVkMktXaFd6dndjeFJCWEtycUs1ajVmaCtlNlcr?=
 =?utf-8?B?by8xYnFPYU1XRS9LZCtZV2ljcGdNMHhPYW53cUxCWDQyQ1g3akY3RXVYVjVH?=
 =?utf-8?B?K3ZkemhIOXczbDFYWjQ0d0RYUUJZalprZnVubHlOVjg1c3NWcUhoUlJEeWRX?=
 =?utf-8?B?ajU1RVJ2NkZDdmJuSGZHODh5SVFkR2hKb2h2YmlPS1F2K3p2blZUNkZnaVg1?=
 =?utf-8?B?QUlqczdWK0Mxencya2tkb3dNUEpMZkxTeFh6Rm90a1pXb25CeWx5NW0vU1Y0?=
 =?utf-8?B?NTc1SHp6bE9wWGNQQ013TkNlbHpWMjFMSEFiWXgvTklrcnpzb1lhcEZWYkh6?=
 =?utf-8?B?bnowc3FaU0NBYmc0L2JoM1BGeDNTT0g4WFdoZ2Q5dXBpZXZPNzdlWkgrZHZz?=
 =?utf-8?B?SFplK2ozYlVzSmJ5Q0E4Q21HUnJ4Rjg0SjZtbFlRMWdEMHJiRFRQSTZja0sy?=
 =?utf-8?B?QnRqWlJoNCsvWVJibGlTK29FQUpNMUZNb3ZHMzNMT1R2eUc2dXoweFJrK3ZB?=
 =?utf-8?B?R1BWTVp4UEQyRkFkUVRpNzhxR0tvZmtLellQT2pwVlJvaG5PMzk2Y3VpTXR3?=
 =?utf-8?B?RVdSWW1ZMzNnUmpFOGpQTUZmWVdQa0h5SW1rVmgvampYMnNiN0UzaVMxYjJR?=
 =?utf-8?B?eDk5Mis0S3NhYmliL3dHOGNFc3RvbnMyUDNZYUkvNnh4cjQ1UUpCdFJtajhG?=
 =?utf-8?B?d3luZ0x2YmZxR0E3MXNFNzFPUzFVUGtjWTQ2QXZad0lzZUwvQjBTdERLeDll?=
 =?utf-8?B?S0UrWkhyZG1id0k2M2ZncU90NVRaQkpiY0ViMmYxb1F1NFhTZWtCWGRFM0x6?=
 =?utf-8?B?MWQ5c3lnblNqblp0NmJKWExMM1Yxd1llUXJJcS81OTRobjNRYm9WejVVb2tu?=
 =?utf-8?B?ODREVHJWQ21PSVB4Y2lvbmRXMmZGQmVBdTY0cWRTMS9TckZ4UjJmMjhaQTRm?=
 =?utf-8?B?Tlk5d0N6U0lqMThZLzczUE8vZHVYb2wrc3BkbGJFaHdxdHBLcTJjTmRaQkRm?=
 =?utf-8?B?ZGUvVTIvZ1ROdURvdFFZRXRaNEtGL0h5d0cxTjNaMmg3U0hQZ0JicDlzQ1Mv?=
 =?utf-8?B?Y0tnNjZIR1lwbjlEUkhPTWJIU0R5dUtqTjd1UnhMTElUU21jTVBZR3Z3VFgv?=
 =?utf-8?B?VEJ6bFBLMmZzMGsyRHhRN0ZISUxpZVZXMFB1ZEdlZ2dTOW00UlVuU0xZV2ww?=
 =?utf-8?B?MnF5OGw4T2tteXJwVWNDcjh2NDBDUG1zYURGOUxiRjZEa0NWRVBmR3NMdkRQ?=
 =?utf-8?B?dzFnZXNRVVl6b1ozWk9xSkhneUlZeU80YWkvbVRhVUs2aWJhNmFHMTN1RDBF?=
 =?utf-8?B?WnF0N1FyclkvQXY3TzFzcmVTdHRMaUU0WHdqc09hc2xwYTJUVTZQMElxbXA5?=
 =?utf-8?B?ZlVBWDRSaWRXVEErTDdaTDhOYkRiblpaZmR2TXBoUFA1RzI3Y0xXQ2FTU1kw?=
 =?utf-8?Q?/t+tmWqRjBRKdY8iLJJn2JGIY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74b516ad-7141-4fc4-b521-08dd051e7984
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2024 02:37:40.1869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hNjxy+99jr9Ib2nSfIMdv05Abe2s5V5UupqpTmeTDSJl9X52NJmxVdr2IeI0B3RkwG/vbOH9ZVd78/jBO+ab0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5297
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR292aW5kYXBpbGxhaSwg
Vmlub2QgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwg
Tm92ZW1iZXIgMTQsIDIwMjQgNzozOSBQTQ0KPiBUbzogS2FuZHBhbCwgU3VyYWogPHN1cmFqLmth
bmRwYWxAaW50ZWwuY29tPjsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTeXJqYWxhLCBWaWxsZSA8dmlsbGUu
c3lyamFsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS93
YXRlcm1hcms6IE1vZGlmeSBsYXRlbmN5IHByb2dyYW1tZWQNCj4gaW50byBQS0dfQ19MQVRFTkNZ
DQo+IA0KPiBPbiBUaHUsIDIwMjQtMTEtMTQgYXQgMTA6MDAgKzA1MzAsIFN1cmFqIEthbmRwYWwg
d3JvdGU6DQo+ID4gSW5jcmVhc2UgdGhlIGxhdGVuY3kgcHJvZ3JhbW1lZCBpbnRvIFBLR19DX0xB
VEVOQ1kgbGF0ZW5jeSB0byBiZSBhDQo+ID4gbXVsdGlwbGUgb2YgbGluZSB0aW1lIHdoaWNoIGlz
IHdyaXR0ZW4gaW50byBXTV9MSU5FVElNRS4NCj4gPg0KPiA+IC0tdjINCj4gPiAtRml4IGNvbW1p
dCBzdWJqZWN0IGxpbmUgW1NhaSBUZWphXQ0KPiA+IC1Vc2UgaW5kaXZpZHVhbCBESVNQTEFZX1ZF
UiBjaGVja3MgaW5zdGVhZCBvZiByYW5nZSBbU2FpIFRlamFdDQo+ID4gLUluaXRpYWxpemUgbWF4
X2xpbmV0aW1lIFtTYWkgVGVqYV0NCj4gPg0KPiA+IC0tdjMNCj4gPiAtdGFrZSBpbnRvIGFjY291
bnQgdGhlIHNjZW5hcmlvIHdoZW4gYWRqdXN0ZWRfbGF0ZW5jeSBpcyAwIFtWaW5vZF0NCj4gPg0K
PiA+IC0tdjQNCj4gPiAtcmVuYW1lIGFkanVzdGVkX2xhdGVuY3kgdG8gbGF0ZW5jeSBbTWl0dWxd
IC1maXggdGhlIGNvbmRpdGlvbiBpbg0KPiA+IHdoaWNoIGRwa2djIGlzIGRpc2FibGVkIFtWaW5v
ZF0NCj4gPg0KPiA+IC0tdjUNCj4gPiAtQWRkIGNoZWNrIHRvIHNlZSBpZiBtYXhfbGluZXRpbWUg
aXMgMCBbVmlub2RdDQo+ID4NCj4gPiBXQTogMjIwMjAyOTk2MDENCj4gSXMgdGhpcyBhIG5vcm1h
bCBwcmFjdGljZT8gSSBkaWRudCBmaW5kIGFueSBvdGhlciB0aGFuIG9uZSBvZiB5b3VyIHByZXYg
cGF0Y2guIEkNCj4gd29uZGVyIGlmIHRoZSBic3BlYyBudW1iZXIgbW9yZSB1c2VmdWwgaGVyZT8N
Cg0KWWVzIG5vcm1hbGx5IHdoZW4gaW1wbGVtZW50aW5nIGEgV2Egd2UgZ2l2ZSB0aGUgSFNEIG51
bWJlciBpbiB0aGUgYWJvdmUgZmFzaGlvbg0KU2luY2UgaXQgZ2l2ZXMgYSB0b3RhbCB2aWV3IG9m
IHdoYXQgdGhlIHByb2JsZW0gd2FzIGFuZCB3aHkgdGhlIFdhIGlzIG5lZWRlZCBhbmQgd2hhdCB0
aGUNCldhIGlzLCBiZWZvcmUgdGhhdCB3ZSB1c2VkIHRvIGRpcmVjdGx5IHdyaXRlIEhTRDogPGhz
ZCBuby4+IGJ1dCBzb21ld2hlcmUgYWxvbmcgdGhlIGxpbmUgdGhlDQpDb252ZW50aW9uIHdhcyBj
aGFuZ2VkIHRvIFdBOiA8aHNkbm8uPi4gU28gbm93IHdlIGVpdGhlciBoYXZlIHN1YmplY3QgbGlr
ZSBBZGQgV2FfPHdhbm8+DQpPciB3ZSBhZGQgdGhlIHdhIGFzIHNob3duIGFib3ZlLg0KDQpSZWdh
cmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+IA0KPiBPdGhlcndpc2UsIGxvb2tzIG9rIGFmdGVyIGFk
ZHJlc3NpbmcgdGhlIGNvbW1lbnRzIGluIHByZXYgcGF0Y2guDQo+IA0KPiBCUg0KPiBWaW5vZA0K
PiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
d20uYyB8IDIyICsrKysrKysrKysrKysrKysrLS0tLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAx
NyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd20uYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93bS5jDQo+ID4gaW5kZXggNjIwODczZDEyNDRmLi5jZTEx
YTY5YjM2Y2MgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF93bS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93
bS5jDQo+ID4gQEAgLTE1Nyw5ICsxNTcsMTAgQEAgaW50ZWxfcHJvZ3JhbV9kcGtnY19sYXRlbmN5
KHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShzdGF0
ZSk7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOw0KPiA+IMKg
wqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGU7DQo+
ID4gLcKgwqDCoMKgwqDCoMKgdTMyIG1heF9sYXRlbmN5ID0gTE5MX1BLR19DX0xBVEVOQ1lfTUFT
SzsNCj4gPiArwqDCoMKgwqDCoMKgwqB1MzIgbGF0ZW5jeSA9IExOTF9QS0dfQ19MQVRFTkNZX01B
U0s7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiBjbGVhciA9IDAsIHZhbCA9IDA7DQo+ID4gwqDC
oMKgwqDCoMKgwqDCoHUzMiBhZGRlZF93YWtldGltZSA9IDA7DQo+ID4gK8KgwqDCoMKgwqDCoMKg
dTMyIG1heF9saW5ldGltZSA9IDA7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGludCBpOw0KPiA+IMKg
wqDCoMKgwqDCoMKgwqBib29sIGZpeGVkX3JlZnJlc2hfcmF0ZSA9IGZhbHNlOw0KPiA+DQo+ID4g
QEAgLTE3MSwxOCArMTcyLDI5IEBAIGludGVsX3Byb2dyYW1fZHBrZ2NfbGF0ZW5jeShzdHJ1Y3QN
Cj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgbmV3X2NydGNfc3RhdGUtPnZyci52bWluID09DQo+ID4gbmV3
X2NydGNfc3RhdGUtPnZyci5mbGlwbGluZSkgfHwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAhbmV3X2NydGNfc3RhdGUtPnZyci5lbmFibGUpDQo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZml4ZWRfcmVmcmVzaF9y
YXRlID0gdHJ1ZTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1h
eF9saW5ldGltZSA9IG1heChuZXdfY3J0Y19zdGF0ZS0+bGluZXRpbWUsDQo+ID4gK21heF9saW5l
dGltZSk7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPg0KPiA+IMKgwqDCoMKgwqDCoMKgwqBp
ZiAoZml4ZWRfcmVmcmVzaF9yYXRlKSB7DQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoG1heF9sYXRlbmN5ID0gc2tsX3dhdGVybWFya19tYXhfbGF0ZW5jeShpOTE1LCAxKTsNCj4g
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKG1heF9sYXRlbmN5ID09IDApDQo+
ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfbGF0
ZW5jeSA9IExOTF9QS0dfQ19MQVRFTkNZX01BU0s7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGxhdGVuY3kgPSBza2xfd2F0ZXJtYXJrX21heF9sYXRlbmN5KGk5MTUsIDEpOw0K
PiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogV2FfMjIwMjAyOTk2
MDEgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGxhdGVuY3kpIHsN
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICgo
RElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjAgfHwNCj4gPiArRElTUExBWV9WRVIoZGlzcGxheSkg
PT0gMzApICYmDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgbWF4X2xpbmV0aW1lKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxhdGVuY3kgPSBtYXhfbGluZXRp
bWUgKg0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBESVZfUk9VTkRfVVAobGF0ZW5jeSwNCj4g
PiArbWF4X2xpbmV0aW1lKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfSBl
bHNlIHsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGxhdGVuY3kgPSBMTkxfUEtHX0NfTEFURU5DWV9NQVNLOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB9DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgYWRkZWRfd2FrZXRpbWUgPSBEU0JfRVhFX1RJTUUgKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRpc3BsYXktPnNhZ3YuYmxvY2tfdGltZV91
czsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGNsZWFy
IHw9IExOTF9BRERFRF9XQUtFX1RJTUVfTUFTSyB8DQo+IExOTF9QS0dfQ19MQVRFTkNZX01BU0s7
DQo+ID4gLcKgwqDCoMKgwqDCoMKgdmFsIHw9IFJFR19GSUVMRF9QUkVQKExOTF9QS0dfQ19MQVRF
TkNZX01BU0ssIG1heF9sYXRlbmN5KSB8DQo+ID4gK8KgwqDCoMKgwqDCoMKgdmFsIHw9IFJFR19G
SUVMRF9QUkVQKExOTF9QS0dfQ19MQVRFTkNZX01BU0ssIGxhdGVuY3kpIHwNCj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19GSUVMRF9QUkVQKExOTF9BRERFRF9XQUtFX1RJ
TUVfTUFTSywNCj4gPiBhZGRlZF93YWtldGltZSk7DQo+ID4NCj4gPiDCoMKgwqDCoMKgwqDCoMKg
aW50ZWxfZGVfcm13KGRpc3BsYXksIExOTF9QS0dfQ19MQVRFTkNZLCBjbGVhciwgdmFsKTsNCg0K
