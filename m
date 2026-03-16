Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEHwKGXpt2mzWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 12:28:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CF3298A9C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 12:28:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E65A10E4B5;
	Mon, 16 Mar 2026 11:28:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jLZRSH4L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6322B10E4AA;
 Mon, 16 Mar 2026 11:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773660515; x=1805196515;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SM7VtQvzD1rzoZj+qrAi9DSmC5PUj7OE2Tbpl0uQmWM=;
 b=jLZRSH4Lydgv+0JJ0RiYaob0vZXhsWLnGnVS2fB8xUjh6ogM9c3jwsyN
 BI0ADm4GMPiCxw2wRX2EOEweEo3PQGLneofFNIYGsVJDAD4Eqvk7p1ttp
 MBovsUFO+Mc0taWXDX0Z6QPMaI5PWNEyl+Xs7WaTa8bTaowuh5K7pk+E0
 MTN6zr6wwnKFuYlPI/J/OWjOSS9OZH5yzKNBvi3WQZ35B85JfvEq2oTCf
 2ZUSV0qJJsuofP4PBitDPQ3vUZerLmLBgHdiQ0D1Bwb/wFxoUAD7iZVTz
 2dQ03rGcL4QxawaoIv0O+KvTneXW8p3YKtchBNNy7XygTb8mVxrZPabZ0 Q==;
X-CSE-ConnectionGUID: 3c4Pvr8xTKKiomMC1VGDNQ==
X-CSE-MsgGUID: 2/1dUw6UTayiOxN7K4RsVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="97282655"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="97282655"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 04:28:34 -0700
X-CSE-ConnectionGUID: MOaAKdScQ82ZqCHdm0B1Kw==
X-CSE-MsgGUID: /BMcq3BUQS6PV2hc+f171A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="221124881"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 04:28:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 04:28:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 04:28:33 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.58) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 04:28:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D1ngfWCBN1qS59/mcPEgHZ0MiB6jMiS1XoXCEdutJ8Og4gJgxXr/ZJ3r91Lw8rB9d8AWq51+KHQhmSQx3lq2zYrhHuBZGtC3eLCTuWkMxbvAItt0un3MwrEMOh19pfhVp5zWYgwkkTFhr2zujnkG/tGOHqXulVYZX7BpD4Z4K8BCehv19HVE8JD2vVjIi8M/IBwjBnIl4+UCeUpe8pQ4+TCOevQ4YwjHhJJcgFQ1ik24M/s16v2bVw6/lajYsjBzuCmYnE3EC+ObJ2u+E9IqI4Xhfi+vAJUC49tviRvsFxW6/8yIAktYGwlLv9gekNF+tsXZqsz3NQ2eF0oMrJ4Jpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SM7VtQvzD1rzoZj+qrAi9DSmC5PUj7OE2Tbpl0uQmWM=;
 b=PWFEekGSD+TizSmImKAGrnUhqrBi1cq6Q4cU9BmqLUDzMTaUxQIwaN7W0c7vQz4F3GzekSvgVMhm0pymwx4eK5kWMgJhyj6ju+vkUet1LM4VgwMiznVwR1Jxo7M5NyRYRK+RRtRrRZWiHvTw/xHSWqeum2nj9DlWUj9LmuxpNFsvqL89oDRdIrSpU0CEaAYqSK2lxcRw1HiUdzYjt4DN8UjYchwLXln/fMaM72KQdbfzgChtpEWZpumWkqE/MMcma2B54Ohpkp+X7bXIdmPJyNskq5m7tuJqdlKt7pHwjuocSX16yCWwCPe5wq7GVwpMsMpU3xXq1sx6ZlkTID20zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB6695.namprd11.prod.outlook.com (2603:10b6:a03:44e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.16; Mon, 16 Mar 2026 11:28:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9723.013; Mon, 16 Mar 2026
 11:28:29 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>, "Kahola, Mika"
 <mika.kahola@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/psr: Compute psr_entry_setup_frames into
 intel_crtc_state
Thread-Topic: [PATCH 2/2] drm/i915/psr: Compute psr_entry_setup_frames into
 intel_crtc_state
Thread-Index: AQHcsft6xtNJ+1luskCpa3kdRcLdJrWwtmiAgABVpgA=
Date: Mon, 16 Mar 2026 11:28:29 +0000
Message-ID: <c3b60409a36bbaaeee59aa696e696ddfa5299ab2.camel@intel.com>
References: <20260312083710.1593781-1-jouni.hogander@intel.com>
 <20260312083710.1593781-3-jouni.hogander@intel.com>
 <DM3PPF208195D8D80A172ABD37CE474F8EAE340A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D80A172ABD37CE474F8EAE340A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB6695:EE_
x-ms-office365-filtering-correlation-id: 0d2b7129-0694-4d15-1765-08de834f2608
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: MhEgx9qZG7Ln7bCfv+USfiDzEB9tP7PJHOKdA4GS8BrZlDVYNFdY98aoqehBXkzXCw4sYy1Wm0iVDNajcGV3eNmghfWrwyWD25Q10D9yHSfBH3WIMqr9rqQkDEFMDamFcZBjDZ0ShpfJKyHUrdpeEqjRO+3CnXMfpT0tkTwMNP77BurnR+C3dyOfMZ9RdCTxOrHJtQxczGyztYMyggSPyV3rAHk+4Yi5Qex1xrvTdV+76uctQCM84I7kTlnzf0hD3UoUKbhSkdn/uw2aZPrHlgTXwhFWJZb2hh1W+bQw1NGLnLN7GKJLkuFWS3W3Okf9sfVUMRSsqq1X75bSwxcZT5HJzUApGC28sf85MKUmRdhgbLAL99j2gfqddPFOT6TzIW2on9DW1Sf6BaiGi6khfd0BnT2noG1bfxPeM5KoF3CU+mWtQ235YhSqW2RwSaVZKM9B8D9Uf61/xn98CylYGsAHakM5gbf2Exf7BItDmrCr/3FqXsTE2bXLSvM472yOBpmuisAYjfAwD56jHX0JQK1omY0EUqVYZDTT855+DOVpUcTHN/ExWf/8xbRiEdzLZfI0YP0APwQkG5HFyuc2kBnjHdiydDn6HFl8gGSuWW7J0WgNY6ZE2YtK3g+wgL3j/BiK/6kgoN90YsinmRwWVf3ri4KWjPKEDbkCqPUUlBNdFwg4CbIaJqEwy1iTSp1QiJ0vYgWEDkkqtmiTmECyZ0hBywQm1xM7Z1VWTCRaPllhQkCJfggc33Yzu3f5PS66appFWtzn3RoG18EvbxPqt9Jsf04ZsOHanWk2vvbg3kY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NU1ONVEvQmhaSFNLUXdpNVFrM2ZyZENjcE9jNWYwc3kwc3BrQmlneGd3TU5S?=
 =?utf-8?B?UlgvZ01IekRhQWRzOHkrT0NlNlkzWWNJNFEvRkhVTTAyakNwd1ZvY2NqVjI2?=
 =?utf-8?B?OXYxdlZYcXlXN2Zya3BrdW1NMHVSc3Y4dUYwZytCQ2ZtK2hucXlrQ2hHYXJl?=
 =?utf-8?B?Ky9CbDQ1N1dENjdTRG1HRS9XSE1sUFNFYzJFdUtBb2RLazlxOHB6eGpVaitz?=
 =?utf-8?B?VmZVbHZoRTJ3aHlUb3JlQVAyV1RTNUFiZEFKTUdLZEJuUW9rRkRkNkV3RE93?=
 =?utf-8?B?amo2dzBrWktnRkhLLzRrQTRzY2swTkJXOE12MlFDTkFMN0RBcmFLQTRFZllv?=
 =?utf-8?B?WFI4aGhuYTRKR3piNk1tTVVyeDRTMWpLaWlxWDN0UnkzZWcrRC9GL20zck5D?=
 =?utf-8?B?ZWNoWDNCcnR3TDRkSjFYbExvZXlGMWw0MWFpYnBZZFh0ZHE4MUJKL1VhcU1Z?=
 =?utf-8?B?YTlvanJXZGY3UnoxMXhKRnRVN3FtL3FYdjIrZS83YVVLZEtVbE9BSEo5Z2t0?=
 =?utf-8?B?VkRZcnhJVnV1NmhJOHNLeXlhdGRpcHVkUWsxRzJRc0xnb3MrTzB6MlI4STky?=
 =?utf-8?B?MUZBL2YwYW5NL2djOHBqTVhzcWRES1Fva25TejgySk01TUVYeWppTytkQ2xa?=
 =?utf-8?B?Qnd0ZVZnSk15UEJuSDA2eUhmWVNYcEZnTytJek1VZnNKdXA2TTJyRXkxK29T?=
 =?utf-8?B?cGEyTFR6anNDYllyS0hZNnN2RVNPd3FYSmtac2lEVWJiQkZ0WlBFUkxZUGNY?=
 =?utf-8?B?RjIwMzdjOVN3UmFxcWl2a2tGMGJYUTVpL0RnaFNzNEM3KzJ6eW9GSlBxMk1R?=
 =?utf-8?B?RXlsY08vZHpBc3lZcFpUbEVxbEtDZEhvWFE5MENPMjhvVUhYNjZzckNoMCtV?=
 =?utf-8?B?emh2WVhZbEJPWmJPMGw3UTkyaDhNVzlQcDE1VnFDY3lsNURXak9uUWowQjhw?=
 =?utf-8?B?ekJrM1JoL2dxbnBsVWxxVkhBWElMQWx3SSthVjI3VDlLSDF4RThkczYzL3hu?=
 =?utf-8?B?MEdzeWxPRFBTb3orNzdET2RDY3hDTHdhSjB6Zmc1TWlOUk4zaWt2cjFOcHBG?=
 =?utf-8?B?TnM5djArUzR2ZmpQZVl4R0taazBuMXdXd2FDV0g2Zjlxa1RxL3BZeUtSVklR?=
 =?utf-8?B?TjJ1UVl0NTVmYWl4SGlTdFVCdnludFhTSW1JOE40MW90V2JCNWxINkJIN3pa?=
 =?utf-8?B?VG1LOE1RSHN0aHFTK1QvMW4yQjl2WTVEUGYwMXpVOU00ck05YXFIMzlmbEh1?=
 =?utf-8?B?aGNLeHRid2JLNWllOWR4dXV5dXpCOS9Lc3VoUHNFaE5aVVE1eFhibU5pOTZO?=
 =?utf-8?B?MXpOeUdnOTVTTytzS0hyeGVydXFPRSt2TVViVlRYSmhvZlFIU0MzcFZZR3R3?=
 =?utf-8?B?VFZZSkZLZU9Td0tGOW5vZWlPaEJoc3NQcE5LNGh0aHJwMEFjWHpsZHUwMmdj?=
 =?utf-8?B?Q2hvVjRJRWpjY1ZaZ1hMSFQwUmU2Y3dQdThqTmZSTFNNdWYvTUVZSTBTY0Nk?=
 =?utf-8?B?TEhOSFpJUXcyM0xhVjZxcis1T09Nd0h6bStQNTBDOVdRYTN5ZTVMWkZrZ1V0?=
 =?utf-8?B?emxyYlhBYlZhZDFSMGRjZWFvYXVQRDI4UEdJWlY1a3p0YU9xWVc2QzJLejJQ?=
 =?utf-8?B?cmkwbTBJdjBlaHE0M3g0ZTBTRnZxd1ZuTXdNbnhITXczMEZ0VWtqTUFVUTNI?=
 =?utf-8?B?VFVySWFMa0NJdk9HRUFUQ1hrMVk0NGhPZkxmaWVpbC9EUnRVNWZUUGFZVVVr?=
 =?utf-8?B?VHlkT3daN292RFBncTkvWkRmakJIUGtPMkdwb0lzYk1aendLSTU3R2c2S2hS?=
 =?utf-8?B?Ynl5R2tsTUVRWFU5WTMySlhKUDRYOFQwUWFUYnloYlhRcm5wYlZqRnRkd1Iz?=
 =?utf-8?B?S0Z6WGwvVW5TeGxoVlRwQzhGem5DU1NkTlZxMDY3L21jTlorQ0ZLQjlIajAr?=
 =?utf-8?B?NGRZNWJackhCZ1RaMldJMHRZNUt4WlpwV3QyeDVOc1pxYmszQm44MERFTW5D?=
 =?utf-8?B?RXFJYXZrS056MjJVeTVHL2JSTzhjSEdSWW8xdWFrbnIyZzVnRkxGMjh1NzdQ?=
 =?utf-8?B?ejRYak9uWCs0cUpsbjBwNXhiUFdCT0trQ1V5Yk83UDBhRllFa3B0cDFDR3du?=
 =?utf-8?B?QXRDVG1aK2tLV2J0ZGdGR0ZVU2tkOG9EL0ZrZ2c3bmRDcE8xVmtHWVYydHpF?=
 =?utf-8?B?bGI3ajdTeUxaMzV0N2ZPRHBONDlaQjBQeEpHWXpZdExvYWpPMjUxa0xuVU9i?=
 =?utf-8?B?bnNvdVJ5dVg0Z2c4Vll6YUxQTnhwdkVXQm5uQXFWNkswL056L2NLaGFvbGps?=
 =?utf-8?B?cWxDK1NtaE1QYzhjbzlpdnEwaHhGVzdXNHdRalloWmxPZHlRYXBkc0cwdHFX?=
 =?utf-8?Q?OIdhmfX9xYg2A2J6T3ljoy75KCziKBclPCxl3DWOWLj4d?=
x-ms-exchange-antispam-messagedata-1: ruZVYF7Iz+dfLMHMiBP2o1KyzhrC5o9MplU=
Content-Type: text/plain; charset="utf-8"
Content-ID: <58407589763E2D4A8E6CB09A52134A31@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: k3b4sEfHy0QBYl+k4ZANLEX+8kShchjopd8vj3lsj2874iIkOWXrG0BCDgozIsKI+5kjRFovKODVj2ve6hy1OJtmhpca35ebAa3PBAYLPlWs77LNildr7NWGmlb7oiMsHs4/DSjAM7qz9JqyjdmX986usH8LUFJdvXzUtacA6PYzvm5RFAtaWTNRAQXMMjwO0v7XzVwVHQwWMHqSoqHj5jeYW8eq86TSBJldpXXHyU9klmbRE621ii4f6LDOK6JyCxq2AepwXnAWBaM9luZ12jjqC0h+DUyyI13PBYZB0fOTUaHcxtGexfxwb3xHlIh08PpSI+LIdUdPrMhhdrR9YQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d2b7129-0694-4d15-1765-08de834f2608
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 11:28:29.6629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wm6qfRZPXAOn0X+ssBa6T7c/Wk/OfipcDO0YLBrr1MftAqltNCkOOvtvaG2KVY6/wXlD0ZrNn0B2ejHcxtivEbC0g8AKtf1u46MmYKGK3vI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6695
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 15CF3298A9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAyMDI2LTAzLTE2IGF0IDA2OjIxICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gPiBTdWJqZWN0OiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS9wc3I6IENvbXB1dGUgcHNyX2VudHJ5
X3NldHVwX2ZyYW1lcw0KPiA+IGludG8NCj4gPiBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gDQo+ID4g
UHNyX2VudHJ5X3NldHVwX2ZyYW1lcyBpcyBjdXJyZW50bHkgY29tcHV0ZWQgZGlyZWN0bHkgaW50
byBzdHJ1Y3QNCj4gDQo+IFNob3VsZCB0aGlzIGJlIFBTUiBlbnRyeV9zZXR1cF9mcmFtZXMuIFNp
bmNlIFBzcl9lbnRyeV9zZXR1cF9mcmFtZXMNCj4gZG9lcyBub3QgZXhpc3QuDQo+IFdpdGggdGhh
dCBmaXhlZCBMR1RNLA0KPiBSZXZpZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBh
bEBpbnRlbC5jb20+DQoNClRoYW5rIHlvdSBTdXJhaiBmb3IgdGhlIHJldmlldy4gVGhlc2UgYXJl
IG5vdyBwdXNoZWQgdG8gZHJtLWludGVsLW5leHQuDQoNCkJSLA0KSm91bmkgSMO2Z2FuZGVyDQoN
Cj4gDQo+ID4gaW50ZWxfZHA6aW50ZWxfcHNyOmVudHJ5X3NldHVwX2ZyYW1lcy4gVGhpcyBjYXVz
ZXMgYSBwcm9ibGVtIGlmDQo+ID4gbW9kZSBjaGFuZ2UNCj4gPiBnZXRzIHJlamVjdGVkIGFmdGVy
IFBTUiBjb21wdXRlIGNvbmZpZzogUHNyX2VudHJ5X3NldHVwX2ZyYW1lcw0KPiA+IGNvbXB1dGVk
IGZvcg0KPiA+IHRoaXMgcmVqZWN0ZWQgc3RhdGUgaXMgaW4gaW50ZWxfZHA6aW50ZWxfcHNyOmVu
dHJ5X3NldHVwX2ZyYW1lLiBGaXgNCj4gPiB0aGlzIGJ5DQo+ID4gY29tcHV0aW5nIGl0IGludG8g
aW50ZWxfY3J0Y19zdGF0ZSBhbmQgY29weSB0aGUgdmFsdWUgaW50bw0KPiA+IGludGVsX2RwOmlu
dGVsX3BzcjplbnRyeV9zZXR1cF9mcmFtZXMgb24gUFNSIGVuYWJsZS4NCj4gPiANCj4gPiBGaXhl
czogMmI5ODFkNTdlNDgwICgiZHJtL2k5MTUvZGlzcGxheTogU3VwcG9ydCBQU1IgZW50cnkgVlND
DQo+ID4gcGFja2V0IHRvIGJlDQo+ID4gdHJhbnNtaXR0ZWQgb25lIGZyYW1lIGVhcmxpZXIiKQ0K
PiA+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IENjOiA8c3Rh
YmxlQHZnZXIua2VybmVsLm9yZz4gIyB2Ni44Kw0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAxICsNCj4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8IDUgKysrLS0NCj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBpbmRleCBlMTg5ZjhjMzljY2Iu
LmQzYTlhY2U0YzlkMSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAgLTExODgsNiArMTE4OCw3IEBA
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsNCj4gPiDCoAl1MzIgZGMzY29fZXhpdGxpbmU7DQo+
ID4gwqAJdTE2IHN1X3lfZ3JhbnVsYXJpdHk7DQo+ID4gwqAJdTggYWN0aXZlX25vbl9wc3JfcGlw
ZXM7DQo+ID4gKwl1OCBlbnRyeV9zZXR1cF9mcmFtZXM7DQo+ID4gwqAJY29uc3QgY2hhciAqbm9f
cHNyX3JlYXNvbjsNCj4gPiANCj4gPiDCoAkvKg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggN2UwZTRjM2JmOTg1Li5jMTMxMTZlNmYx
N2YgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiBAQCAtMTcxNiw3ICsxNzE2LDcgQEAgc3RhdGljIGJvb2wgX3Bzcl9jb21wdXRlX2NvbmZp
ZyhzdHJ1Y3QNCj4gPiBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiDCoAllbnRyeV9zZXR1
cF9mcmFtZXMgPQ0KPiA+IGludGVsX3Bzcl9lbnRyeV9zZXR1cF9mcmFtZXMoaW50ZWxfZHAsDQo+
ID4gY29ubl9zdGF0ZSwgYWRqdXN0ZWRfbW9kZSk7DQo+ID4gDQo+ID4gwqAJaWYgKGVudHJ5X3Nl
dHVwX2ZyYW1lcyA+PSAwKSB7DQo+ID4gLQkJaW50ZWxfZHAtPnBzci5lbnRyeV9zZXR1cF9mcmFt
ZXMgPQ0KPiA+IGVudHJ5X3NldHVwX2ZyYW1lczsNCj4gPiArCQljcnRjX3N0YXRlLT5lbnRyeV9z
ZXR1cF9mcmFtZXMgPQ0KPiA+IGVudHJ5X3NldHVwX2ZyYW1lczsNCj4gPiDCoAl9IGVsc2Ugew0K
PiA+IMKgCQljcnRjX3N0YXRlLT5ub19wc3JfcmVhc29uID0gIlBTUiBzZXR1cCB0aW1pbmcgbm90
DQo+ID4gbWV0IjsNCj4gPiDCoAkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+IEBAIC0x
ODE0LDcgKzE4MTQsNyBAQCBzdGF0aWMgYm9vbA0KPiA+IGludGVsX3Bzcl9uZWVkc193YV8xODAz
NzgxODg3NihzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAswqAgew0KPiA+IMKgCXN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVsX2Rw
KTsNCj4gPiANCj4gPiAtCXJldHVybiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjAgJiYgaW50
ZWxfZHAtDQo+ID4gPiBwc3IuZW50cnlfc2V0dXBfZnJhbWVzID4gMCAmJg0KPiA+ICsJcmV0dXJu
IChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAyMCAmJiBjcnRjX3N0YXRlLQ0KPiA+ID4gZW50cnlf
c2V0dXBfZnJhbWVzID4NCj4gPiArMCAmJg0KPiA+IMKgCQkhY3J0Y19zdGF0ZS0+aGFzX3NlbF91
cGRhdGUpOw0KPiA+IMKgfQ0KPiA+IA0KPiA+IEBAIC0yMTkwLDYgKzIxOTAsNyBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QNCj4gPiBpbnRlbF9kcA0KPiA+ICpp
bnRlbF9kcCwNCj4gPiDCoAlpbnRlbF9kcC0+cHNyLnBrZ19jX2xhdGVuY3lfdXNlZCA9IGNydGNf
c3RhdGUtDQo+ID4gPnBrZ19jX2xhdGVuY3lfdXNlZDsNCj4gPiDCoAlpbnRlbF9kcC0+cHNyLmlv
X3dha2VfbGluZXMgPSBjcnRjX3N0YXRlLQ0KPiA+ID5hbHBtX3N0YXRlLmlvX3dha2VfbGluZXM7
DQo+ID4gwqAJaW50ZWxfZHAtPnBzci5mYXN0X3dha2VfbGluZXMgPSBjcnRjX3N0YXRlLQ0KPiA+
ID5hbHBtX3N0YXRlLmZhc3Rfd2FrZV9saW5lczsNCj4gPiArCWludGVsX2RwLT5wc3IuZW50cnlf
c2V0dXBfZnJhbWVzID0gY3J0Y19zdGF0ZS0NCj4gPiA+ZW50cnlfc2V0dXBfZnJhbWVzOw0KPiA+
IA0KPiA+IMKgCWlmICghcHNyX2ludGVycnVwdF9lcnJvcl9jaGVjayhpbnRlbF9kcCkpDQo+ID4g
wqAJCXJldHVybjsNCj4gPiAtLQ0KPiA+IDIuNDMuMA0KPiANCg0K
