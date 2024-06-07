Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DAF9002D4
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 13:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07D6810EC0A;
	Fri,  7 Jun 2024 11:59:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AO3s2UoL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64B6310EC0A
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 11:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717761566; x=1749297566;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YPbCUP2fMe6u28mEy12Hd+UaYXIrazxOKpwRAt4p6TQ=;
 b=AO3s2UoLt+5QwF7QgEaHnBSwgFCfPIEaHr5xtk3sxUWdDTD0xJp97tps
 PAcpmIIa+j53mBUp/LsuLz9uJ71I4Q7l8Rao3ecp2GWTBXeN6OwOrsyTC
 xWB3e0paeni9lIbbK1A47QtrtkhbA107t2eD54wCBleQ3Ns6zhNMWXCf/
 4kkbmO5gcV6Mm0cb6kz5gm4Vu2LmEiCWiOGHGTo8uTR9Om7ty0HZnR3Re
 ZX1rumZVOxPWLPduSmE8MMeYGY1bLU98nTFrBRD9i2oPtJH5sa2fq040q
 EG5jDd9jiMS2+FyKyFYq8vAGwiwLJspxCUuskgZKig8MRpseRbCpUkczi A==;
X-CSE-ConnectionGUID: I+Aa8z50QQa/th6+vc2D3g==
X-CSE-MsgGUID: Oq2L9UTQRtOxAI9lEjBmUw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18270096"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="18270096"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 04:59:25 -0700
X-CSE-ConnectionGUID: +xh36iwNTZaiRBRJ8XvqZA==
X-CSE-MsgGUID: mpkw923RQQ6PJNqZt1nlLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="38880203"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jun 2024 04:59:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 04:59:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 04:59:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 7 Jun 2024 04:59:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 7 Jun 2024 04:59:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=In1bgxYGHR6ZpT/sSBaPAiZnC/vrPTQk4ci+e/uYHIqVkc3kIB9+JU2BjjS5P1HaPWBpVfFdLyQ4TBZ2W5CtAAnr191qhr+G2p3iOD+TGOEzYkl0EfPHzJB+qjKlrk7c8Qh10KSMNRtMPLiMltaQKpZw64a/Rfq3XjB20Zf/ke8Wkfw45REqm+wh/2amHBBdJaFMXP+x5oWONIUqEYDMd5647jn+vZgdTFoy8gKu+wbnlSTxV9faKJGR4nYwpGbXZs/Er5djDLTpR3ijE3f011VztZRU7f5HE9Imfz+op8+hQGg9CgkUq9V9J7EV3XSAbJN2quyCQlljuRcKL2hcxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YPbCUP2fMe6u28mEy12Hd+UaYXIrazxOKpwRAt4p6TQ=;
 b=eRl85w9VNYYusvJSRTZNiNf/ImgVtuLsJH+Sw4Lo1PsR9gXseHs9Ij1qeAYBmaKUcdzz6T8320YGvRUk0rY773opwtxRsVPRfO2XTzqiT2doO2QIk9EMYsQpIrnKWAlHuonOFD0XW4O19HJtjpdxs6IDRvtMBlhl01vwXTWEm9Kj+WCLYMNLhqYcmdxZnHr8F80cjwTJevdhxxmcxElwSOhDUK5j+O1TyViiGVNaZ8kkEFZSL8050csmyqrPO2MjCPg5G6sBpX0gjuE6quUvkfMWN8LmfVyIz2r96lBBb106M7EpleAp2zXW9soVrjYR7pryAs8SNXRaS1KedudLBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB7262.namprd11.prod.outlook.com (2603:10b6:8:13c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Fri, 7 Jun
 2024 11:59:21 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Fri, 7 Jun 2024
 11:59:21 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 06/26] drm/i915/psr: Split enabling sink for PSR and
 Panel Replay
Thread-Topic: [PATCH v6 06/26] drm/i915/psr: Split enabling sink for PSR and
 Panel Replay
Thread-Index: AQHatzLYiTn/WsaSPkKtpCWcPB5VNrG8Naow
Date: Fri, 7 Jun 2024 11:59:21 +0000
Message-ID: <PH7PR11MB5981AFEA084F50C16553B78BF9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-7-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB7262:EE_
x-ms-office365-filtering-correlation-id: 719bab85-719c-4542-dfca-08dc86e944b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?d0hKZE1Rc25nalZuMFJqaXcrNjJVaWo5SUErb1Z4Z3VhekZrcTNGMm1XZ011?=
 =?utf-8?B?S1JmZERYcWtRWGdDNTcveVgrR3daTHVzYlNwVkQvcDQxSTBZNW9mNDI1K2Fk?=
 =?utf-8?B?VHNzNGJEUkJSaTQzdDlHMnhwZzVVUHd5TzF6OVNEcmE3Mm1VVFMwcThLSysr?=
 =?utf-8?B?c3FzNmZEQkNzU1NEMWFyZDlrR29GbFVGSlVldFRyM1ZtakRZNTRsc1k4Y3Fz?=
 =?utf-8?B?UWhxWi84VGt6MWVUTUlFTDFaZ3p0bWZaT2oyblMzbjJGa0xTYW0rbWw0TlNj?=
 =?utf-8?B?Y3BVN1QyUGZwKzRBSXFyYnZZUlRxTVliWVpCS29aa0JGTE15RmRGNDZNajdJ?=
 =?utf-8?B?a3doYmZ0SEFlUEN5eUFwbWhxbUFnUDlkQmNKbXRLMXcyRG5TZ2pGNE9kTHN4?=
 =?utf-8?B?YUJHR3k5ejRTaFRGMFdQRldueEd1aHFiMVNUY0FjWXdWNjM4amRiM2lXVXhV?=
 =?utf-8?B?bUlEdWVEQnZHYjZuQUgzcGdOelZ6R1ZZN3JJbEtKU05QU0h3cXBnVFV4c01J?=
 =?utf-8?B?Znd5Y3hFU0hiVEVmZndkME1GYk9zS3VGSjB5Q1VsVk5mUkdFaEovS2xpeE5B?=
 =?utf-8?B?RFdWbWhNelloSzh6cXl0aW9HL3hGZWlpOXhHTzN2d3lteGxYQjEvNE9reFU4?=
 =?utf-8?B?NzZTMUc5Z1JqUFhqOUxnS2tFdEsrM1RudUFCZ2Z5aHR2RDdkZFloWTJla245?=
 =?utf-8?B?THJ2QjgzaEo3QW83ZTlhTmdOeXp6OGR2bi92Ymw2dTBCMWNDNVg0NjhkSHdO?=
 =?utf-8?B?Uy9ESTFXYVFuOEFNZHNpdVpRV2hGQzZaVnlhQTRnRCswd3F6S1VsMmlJTVl3?=
 =?utf-8?B?TEZDakYyaUxSblJOUjFwUFQ3bnNDclBXM0Y2Rk04enJRR1JheDJaU0RrWk1P?=
 =?utf-8?B?bERoRlZEVGl0bnh6QWR3dUYvaFhkaWpKOWE4SzdwdU1GSmczcitlblc0MUVB?=
 =?utf-8?B?eEVjZmZCSi9vc3lnaHNXeDBPSjJ4YytZSkFMSlo1UXRqbzBJQngwNURZQ01R?=
 =?utf-8?B?dHphelY4WG85eXhjTzQ2QW0xVDF4cXhONHhja3Bhd1RMT0FLQzUxUnU3bGlj?=
 =?utf-8?B?ejNiK3NCQWw2U05OMXo3ZUR4MFErTWsydW5McURNQU5qVWtJaVFHWjlZVlVp?=
 =?utf-8?B?ckIzVTcyZVVXaVdFVE1yWTJobEpldkRZakxXd1RZdDlLbmxiZ243ZU96bDg1?=
 =?utf-8?B?U0VQL1BiWEJ4YUNqNXFvNHlrL2lWV2ltYWtyYkdKb0R6MDYvT2NHV0dPMTZj?=
 =?utf-8?B?SlM3YWorV0IrVC8yNkhUZG11aE53QjBORWczS05ic0tTb1R1MzJYaDBrQVRx?=
 =?utf-8?B?QlZTOHl1dnhOTEpYVU5aa05lWTNOUXYvdGV0SEloVkdkWmFCQ0N3KytnUEdE?=
 =?utf-8?B?enZlLzZ5Tkd5SnJiSVRIWHdiUEpTNDJKd3hubTRJM2ZTbldhQ1dsd1V2RUE1?=
 =?utf-8?B?Z1VuRFh4T0lONjEzZWVTM05UOGZyZFZMcUY4SDBGVTFkTmRiOGRxQm40dzF6?=
 =?utf-8?B?aWR4OFY1SHJFOW90azdyQy9IVVdoczRJazkwaVZZcXpmUko2cVZCODVuelJ6?=
 =?utf-8?B?eUEvaEtnNG12ekh4Q1VNWjFIVmNBUWsydCtHbXM4UVQ3UXl2aEtUc21TVTgr?=
 =?utf-8?B?UGhNZlF2WDUyRWdnRHdoc29tNW0yYkM3OXdQSmJtOXFkYW8vY0lVRWpoM21F?=
 =?utf-8?B?eGxJdzJTN1E3NDJqc0J6T21SM1V6Y0JFTEhPbnovVzBtRlBZdWN3L0RzMzBT?=
 =?utf-8?B?OFpzcTYya25sTC9XaWRucjk2OFIxKzFTRTlYOTB3a0xLdmRqMUpmazFtdnIr?=
 =?utf-8?Q?WCfNARmQJuA/sE11nF3YIWphLl/OZRiSHCTnI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YlJHbWh6enQ5WWY5Wlhid0VQMGc0bngvblhuNmxaUzRpbVkwOHFuQXY1aG9S?=
 =?utf-8?B?N2VRSnYxOFRiNDVEK0tGUDA0TlB2VTBRQUQ2blJPWnNGT0Y4bGZlOGRYMWVK?=
 =?utf-8?B?R04rVXQvRDhLSEJ6S29DbXFUMDRhYUhEbzRXYllsTjVmT2J4WjQ3VVM2RGx5?=
 =?utf-8?B?WnNNNHVDSWhka2RTNkc5L0FmYU1aV1l5V29rMldoQ2FzTFZqVTVsdzdPNUlK?=
 =?utf-8?B?RkRyRWJFZ09FekQ1SWs1eTdsT2pjWVZpeWVFUG9QSjZqUkpvZFE0RHpLQlpj?=
 =?utf-8?B?cVhOakt2NTlrT29rM0R3T1pRaHBsUXZzbWYwdnRJcTFIeC93ZmUwd21LUkpH?=
 =?utf-8?B?VE04WTcvdW9VZEtSSTZMK0pkUkprZEdLZmRuSmk2ckwwb0hZejNKZ0NLZG9i?=
 =?utf-8?B?QkRseXhsZWF1ci9Pd1BpRmY2TGF1SGlJcFdUako0R3NlcDlOUFIxUENXOURm?=
 =?utf-8?B?Q1YxYzJVQnZYdFhSc0h2NlhHc04wMk12cVlNNSsxaWY5cHRPL2Y5NzFkNEFY?=
 =?utf-8?B?MXd3bURPWVZTZHE2eGc2MGFXMVBvTnlPckdRTlB5MDdaK1pBQUNHZVVGMTYw?=
 =?utf-8?B?VE1wMDEzRXFOcjVHVE1yclBBVW84aUhBTkZrRnBwb09Ea1RrTXB0YXVCV0NM?=
 =?utf-8?B?RmRicjI0em1FZFoyU2FHREIzajdRTTlkbHR6LzViOTdsZzNoZEpvVHlFZDJx?=
 =?utf-8?B?MnNZM0UvUTF3M010dWMxZlZQckt3R25uR1ZSK21xSWo5RmdjS3R4dUpLL0FT?=
 =?utf-8?B?SG5jRHc2N2drc2xPK0VYU2pCaXU0TDIyaGxWUXZLQmVzYzQrbDhqaHlQN2Rj?=
 =?utf-8?B?bzNMZzNuTms5UmFSV0hHTXhrRUNQNXMvbEJwRWFaOHRVKzBCZFRpY0t4S1Z2?=
 =?utf-8?B?MTU5TTIwKzJQUStPU2pMYXBiSWwxZGwzQUcvNkdaOVhqSWZKVWx0RTJsUFdj?=
 =?utf-8?B?QUpaMkEybHorMm1JTHFwTU0zRGZieldlUWRvWWszRTdxQVJZcDdtSFlvVzk0?=
 =?utf-8?B?aTl1OWh0WFVQZFlLbzhOU1k4aXpQN0dmc0h5Y0I3dWZMRHVnWHdZRmxjcTRl?=
 =?utf-8?B?MnBhN0pTangweFE0bEErVStPcFYvbmNqUHlaazB3VXJJZ3BsbDFsYk85bEhO?=
 =?utf-8?B?Tit1K29XcGJ5N3NwaFNzU1E1cGg0M1lmcGVEN0lDNHFWV2J3YklpdkY2blZM?=
 =?utf-8?B?U2JiMUlaRUhuN0EzOWNjR0xlcEpOUWlTVmhuemtCY2NVd2xKcUJKUlpqTmdK?=
 =?utf-8?B?RWxnNlVodHRBTTZHTTdBdkk1cnZLQTBXL0RSVDl3WHQ5c0Jpc0F1V2VWMXJU?=
 =?utf-8?B?Tlg2YkxmUjdIdkhVdGgwNGhzQy81VngzYmdSVkFWZ0JwZ1lnbTdoRFVTQUlW?=
 =?utf-8?B?MjdOaTdNRkduYVM2T1VIUXRkaHcwZjZadHV4bTlyQ1F6cjlSUDdjMVo5VVRX?=
 =?utf-8?B?QitRQzd6SGdJeUFqWUxEbmFSajIyYURTblA5Z3labWZFWXFxdkcwcloyU0dI?=
 =?utf-8?B?cnZRUmF3WForbktEeFkzWVo0T2JrcU5tL1JMNTVmVlM2Q1BVUGsvR0hpMlRD?=
 =?utf-8?B?d3JwVHZaM2lqTENkemIxZkdTalNoZUttM0p1UU53Q3pVNnhZRWhWa3FsNE51?=
 =?utf-8?B?V2JGM1J3VFVLcFRiOWYzMFMxR3dyaUhBSy9MVGRoMVVuTGlyMmFOcXBCTFFk?=
 =?utf-8?B?bUVxZk1Ud1lNQk14QU9ITm5YWjkzTnVyWWdUb2c5Und4bFZvcnZiNG1vM2JC?=
 =?utf-8?B?bnoxdlIvdW56djZMMHRjdDZsSHdXSmJhR0MrUVVhd1BpMjV1TWdmTiszdkgw?=
 =?utf-8?B?c2FUclh5UVJOb1lpcHR4V1pqWFFEeW1ERjhBOFhYM2FPTUh4QlBVcWtselhP?=
 =?utf-8?B?MTg3VWo0QS9uTUQ5VnJRV2RPcUJCMTV1YWxnQ1pWNFRhdWgzbWJicjN6SFlX?=
 =?utf-8?B?K1Roem9CNy9QYXBIL2lwcGp6SVJXQTZ6WUNyb2RicXJZU0orbXFONms0M29I?=
 =?utf-8?B?Smw0Q2EwaHBHeXVKQ3NCMUFXcVRYaHlYL3NEL1lzZzQ5Zld5ZzNGWXNIUU4y?=
 =?utf-8?B?V3YrQk8vWEV5T01uaU1URFV0d1dyWXBZZnVpT0t6TmZRTnRmWVM5STMwcnRI?=
 =?utf-8?Q?F43oM15mE5gj7iNOvKrCf7arw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 719bab85-719c-4542-dfca-08dc86e944b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2024 11:59:21.7488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wWEMLH7XhPDiy+GTfeW1an8JIBwDytc1LCrVgjhyXnZFiEZiwHc8AiKYcTqXkRx3bMZDdfqXwPtnPIeCUbcoUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7262
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTYgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAwNi8yNl0gZHJtL2k5MTUvcHNyOiBT
cGxpdCBlbmFibGluZyBzaW5rIGZvciBQU1IgYW5kIFBhbmVsDQo+IFJlcGxheQ0KPiANCj4gQ3Vy
cmVudCBpbnRlbF9wc3JfZW5hYmxlX3NpbmsgaXMgYSBtZXNzIGR1ZSB0byBwYXJ0bHkgcmV1c2lu
ZyBQU1IgYml0DQo+IGRlZmluaXRpb25zIGZvciBQYW5lbCBSZXBsYXkuIEV2ZW4gdGhvdWdodCBQ
U1IgYW5kIFBhbmVsIFJlcGxheSBlbmFibGUNCj4gcmVnaXN0ZXJzIGRvIGhhdmUgY29tbW9uIGJp
dHMgdGhleSBzdGlsbCBoYXZlIGFsc28gZGlmZmVyZW50IGJpdHMgYW5kIHNhbWUNCj4gYml0cyB3
aXRoIGRpZmZlcmVudCBtZWFuaW5nLiBGb3Igc2FrZSBvZiBjbGFyaXR5IHNwbGl0IGVuYWJsaW5n
IHNpbmsgdG8gUFNSIGFuZA0KPiBQYW5lbCBSZXBsYXkgc3BlY2lmaWMgcGFydHMuDQo+IA0KPiBB
bHNvIGZpeCBpc3N1ZSBjYXVzZWQgYnkgdXNpbmcgcHNyLT5wYW5lbF9yZXBsYXlfZW5hYmxlZCB0
byBlYXJseS4NCj4gDQo+IEZpeGVzOiA4OGFlNmM2NWVjZGIgKCJkcm0vaTkxNS9wc3I6IFVuaWZ5
IHBhbmVsIHJlcGxheSBlbmFibGUvZGlzYWJsZSBzaW5rIikNCj4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBB
bmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA4MSArKysrKysrKysrKysrLS0t
LS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspLCAzNyBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBpbmRleCA0YTQxMjRhOTJhMGQuLjNjYzM4YmEyZjk1NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC02ODYsNTYgKzY4Niw2MiBAQCBzdGF0
aWMgYm9vbCBwc3IyX3N1X3JlZ2lvbl9ldF92YWxpZChzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVs
X2RwKQ0KPiAgCXJldHVybiBmYWxzZTsNCj4gIH0NCj4gDQo+IC1zdGF0aWMgdW5zaWduZWQgaW50
IGludGVsX3Bzcl9nZXRfZW5hYmxlX3Npbmtfb2Zmc2V0KHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50
ZWxfZHApDQo+ICtzdGF0aWMgdm9pZCBfcGFuZWxfcmVwbGF5X2VuYWJsZV9zaW5rKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsDQo+ICsJCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIHsNCj4gLQlyZXR1cm4gaW50ZWxfZHAtPnBzci5wYW5lbF9y
ZXBsYXlfZW5hYmxlZCA/DQo+IC0JCVBBTkVMX1JFUExBWV9DT05GSUcgOiBEUF9QU1JfRU5fQ0ZH
Ow0KPiArCXU4IHZhbCA9IERQX1BBTkVMX1JFUExBWV9FTkFCTEUgfA0KPiArCQlEUF9QQU5FTF9S
RVBMQVlfVlNDX1NEUF9DUkNfRU4gfA0KPiArCQlEUF9QQU5FTF9SRVBMQVlfVU5SRUNPVkVSQUJM
RV9FUlJPUl9FTiB8DQo+ICsJCURQX1BBTkVMX1JFUExBWV9SRkJfU1RPUkFHRV9FUlJPUl9FTiB8
DQo+ICsJCURQX1BBTkVMX1JFUExBWV9BQ1RJVkVfRlJBTUVfQ1JDX0VSUk9SX0VOOw0KPiArDQo+
ICsJaWYgKGNydGNfc3RhdGUtPmhhc19zZWxfdXBkYXRlKQ0KPiArCQl2YWwgfD0gRFBfUEFORUxf
UkVQTEFZX1NVX0VOQUJMRTsNCj4gKw0KPiArCWlmIChjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9z
dV9yZWdpb25fZXQpDQo+ICsJCXZhbCB8PSBEUF9QQU5FTF9SRVBMQVlfRU5BQkxFX1NVX1JFR0lP
Tl9FVDsNCj4gKw0KPiArCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgUEFORUxf
UkVQTEFZX0NPTkZJRywgdmFsKTsNCj4gIH0NCj4gDQo+IC0vKg0KPiAtICogTm90ZTogTW9zdCBv
ZiB0aGUgYml0cyBhcmUgc2FtZSBpbiBQQU5FTF9SRVBMQVlfQ09ORklHIGFuZA0KPiBEUF9QU1Jf
RU5fQ0ZHLiBXZQ0KPiAtICogYXJlIHJlbHlpbmcgb24gUFNSIGRlZmluaXRpb25zIG9uIHRoZXNl
ICJjb21tb24iIGJpdHMuDQo+IC0gKi8NCj4gLXZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zaW5rKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IC0JCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gK3N0YXRpYyB2b2lkIF9wc3JfZW5hYmxlX3Npbmsoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gKwkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIHsNCj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gLQl1OCBkcGNkX3ZhbCA9IERQX1BT
Ul9FTkFCTEU7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1
KGludGVsX2RwKTsNCj4gKwl1OCB2YWwgPSBEUF9QU1JfRU5BQkxFOw0KPiANCj4gIAlpZiAoY3J0
Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUpIHsNCj4gLQkJLyogRW5hYmxlIEFMUE0gYXQgc2luayBm
b3IgcHNyMiAqLw0KPiAtCQlpZiAoIWNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkpIHsNCj4g
LQkJCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwNCj4gLQkJCQkJICAgRFBfUkVD
RUlWRVJfQUxQTV9DT05GSUcsDQo+IC0JCQkJCSAgIERQX0FMUE1fRU5BQkxFIHwNCj4gLQ0KPiBE
UF9BTFBNX0xPQ0tfRVJST1JfSVJRX0hQRF9FTkFCTEUpOw0KPiAtDQo+IC0JCQlpZiAoY3J0Y19z
dGF0ZS0+ZW5hYmxlX3BzcjJfc3VfcmVnaW9uX2V0KQ0KPiAtCQkJCWRwY2RfdmFsIHw9DQo+IERQ
X1BTUl9FTkFCTEVfU1VfUkVHSU9OX0VUOw0KPiAtCQl9DQo+IC0NCj4gLQkJZHBjZF92YWwgfD0g
RFBfUFNSX0VOQUJMRV9QU1IyIHwNCj4gRFBfUFNSX0lSUV9IUERfV0lUSF9DUkNfRVJST1JTOw0K
PiArCQl2YWwgfD0gRFBfUFNSX0VOQUJMRV9QU1IyIHwNCj4gRFBfUFNSX0lSUV9IUERfV0lUSF9D
UkNfRVJST1JTOw0KPiAgCX0gZWxzZSB7DQo+ICAJCWlmIChpbnRlbF9kcC0+cHNyLmxpbmtfc3Rh
bmRieSkNCj4gLQkJCWRwY2RfdmFsIHw9IERQX1BTUl9NQUlOX0xJTktfQUNUSVZFOw0KPiArCQkJ
dmFsIHw9IERQX1BTUl9NQUlOX0xJTktfQUNUSVZFOw0KPiANCj4gLQkJaWYgKCFjcnRjX3N0YXRl
LT5oYXNfcGFuZWxfcmVwbGF5ICYmIERJU1BMQVlfVkVSKGRldl9wcml2KQ0KPiA+PSA4KQ0KPiAt
CQkJZHBjZF92YWwgfD0gRFBfUFNSX0NSQ19WRVJJRklDQVRJT047DQo+ICsJCWlmIChESVNQTEFZ
X1ZFUihpOTE1KSA+PSA4KQ0KPiArCQkJdmFsIHw9IERQX1BTUl9DUkNfVkVSSUZJQ0FUSU9OOw0K
PiAgCX0NCj4gDQo+IC0JaWYgKGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkpDQo+IC0JCWRw
Y2RfdmFsIHw9DQo+IERQX1BBTkVMX1JFUExBWV9VTlJFQ09WRVJBQkxFX0VSUk9SX0VOIHwNCj4g
LQkJCURQX1BBTkVMX1JFUExBWV9SRkJfU1RPUkFHRV9FUlJPUl9FTjsNCj4gLQ0KPiAtCWlmIChj
cnRjX3N0YXRlLT5yZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUpDQo+IC0JCWRwY2RfdmFsIHw9
IERQX1BTUl9TVV9SRUdJT05fU0NBTkxJTkVfQ0FQVFVSRTsNCj4gKwlpZiAoY3J0Y19zdGF0ZS0+
ZW5hYmxlX3BzcjJfc3VfcmVnaW9uX2V0KQ0KPiArCQl2YWwgfD0gRFBfUEFORUxfUkVQTEFZX0VO
QUJMRV9TVV9SRUdJT05fRVQ7DQo+IA0KPiAgCWlmIChpbnRlbF9kcC0+cHNyLmVudHJ5X3NldHVw
X2ZyYW1lcyA+IDApDQo+IC0JCWRwY2RfdmFsIHw9IERQX1BTUl9GUkFNRV9DQVBUVVJFOw0KPiAr
CQl2YWwgfD0gRFBfUFNSX0ZSQU1FX0NBUFRVUkU7DQo+IA0KPiAtCWRybV9kcF9kcGNkX3dyaXRl
YigmaW50ZWxfZHAtPmF1eCwNCj4gLQkJCSAgIGludGVsX3Bzcl9nZXRfZW5hYmxlX3Npbmtfb2Zm
c2V0KGludGVsX2RwKSwNCj4gLQkJCSAgIGRwY2RfdmFsKTsNCj4gKwlkcm1fZHBfZHBjZF93cml0
ZWIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9FTl9DRkcsIHZhbCk7IH0NCj4gKw0KPiArdm9pZCBp
bnRlbF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gKwkJCSAg
IGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7DQo+ICsJLyogRW5h
YmxlIEFMUE0gYXQgc2luayBmb3IgcHNyMiAqLw0KPiArCWlmICghY3J0Y19zdGF0ZS0+aGFzX3Bh
bmVsX3JlcGxheSAmJiBjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSkNCj4gKwkJZHJtX2RwX2Rw
Y2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LA0KPiArCQkJCSAgIERQX1JFQ0VJVkVSX0FMUE1fQ09O
RklHLA0KPiArCQkJCSAgIERQX0FMUE1fRU5BQkxFIHwNCj4gKw0KPiBEUF9BTFBNX0xPQ0tfRVJS
T1JfSVJRX0hQRF9FTkFCTEUpOw0KPiArDQo+ICsJY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxh
eSA/DQo+ICsJCV9wYW5lbF9yZXBsYXlfZW5hYmxlX3NpbmsoaW50ZWxfZHAsIGNydGNfc3RhdGUp
IDoNCj4gKwkJX3Bzcl9lbmFibGVfc2luayhpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+IA0KPiAg
CWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiAgCQlkcm1fZHBfZHBjZF93cml0ZWIo
JmludGVsX2RwLT5hdXgsIERQX1NFVF9QT1dFUiwNCj4gRFBfU0VUX1BPV0VSX0QwKTsgQEAgLTE5
MjAsNyArMTkyNiw4IEBAIHN0YXRpYyB2b2lkDQo+IGludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiANCj4gIAkvKiBEaXNhYmxlIFBTUiBvbiBTaW5r
ICovDQo+ICAJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LA0KPiAtCQkJICAgaW50
ZWxfcHNyX2dldF9lbmFibGVfc2lua19vZmZzZXQoaW50ZWxfZHApLCAwKTsNCj4gKwkJCSAgIGlu
dGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQgPw0KPiArCQkJICAgUEFORUxfUkVQTEFZ
X0NPTkZJRyA6IERQX1BTUl9FTl9DRkcsIDApOw0KPiANCj4gIAlpZiAoIWludGVsX2RwLT5wc3Iu
cGFuZWxfcmVwbGF5X2VuYWJsZWQgJiYNCj4gIAkgICAgaW50ZWxfZHAtPnBzci5zZWxfdXBkYXRl
X2VuYWJsZWQpDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
