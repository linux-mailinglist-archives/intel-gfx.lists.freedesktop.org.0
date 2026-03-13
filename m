Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id pAZQLJF9tGmuowAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 22:11:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACC228A0DC
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 22:11:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C55C10EC62;
	Fri, 13 Mar 2026 21:11:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FzSOHMdK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BED610EB9E;
 Fri, 13 Mar 2026 21:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773436301; x=1804972301;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LqKvRtKOmEtl0O/LIPfT6Ww9BH92bGTTBOE5+e7cYu8=;
 b=FzSOHMdKglk25bbTqy3dh99BhIP8mH1DFDY7/q6d1ptST4E33kfUXv95
 XGEzfD8/Fou+Qh2kWtulVj9yOTY4hVDI7zDzhuvaKFye25cpbCv4Wc7k/
 yo5aKyTCAOSw2k1kvPR94qi/1clbkJBfCzyJvGTMLdVZ6te3EexcZYZGx
 Qy9nOZLp75wJA+jWHjjbGVeN6NTs6fZ+w53qRNva73jpZqDaOoEyiTEKa
 KGRVYyiIPz4y/rScR3xAQwuZZpkrBTtHGajS7uH7OSOqLrcXcDJt3bpbS
 tZG6sNrzrkrm91vM5MPNT8k8EYPnfSvwYJe4X+wJigyxt6ffEPQWKwxmz Q==;
X-CSE-ConnectionGUID: UgSCVNoATXusX6Y2n9x8jQ==
X-CSE-MsgGUID: hDeFbNCuQs6h+OPnPcgjSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="91930564"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="91930564"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 14:11:40 -0700
X-CSE-ConnectionGUID: 6AfO6hG8SgyuROltory1Ig==
X-CSE-MsgGUID: NcPo3OMJTfSHHiYJLHL8PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="220355569"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 14:11:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 14:11:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 14:11:39 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.67) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 14:11:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DaR7ykxz/Jfrp58h0pJDyFKH5HF36NKYtR/vUukW9y45aOW1Gwp43DbqwnnsyxVVQUHWI6gJhPc+EDMYjZEJLzd9/p/YLHOOVFTyCJ/VE7LfWi+z5MPyAmr4rEjSN8I1xewu2TrX6CcSiqqyIepQQAxpJbzHdqMbQiIkhIOmLaklxJPpMKh1DwqlD77bbnc4uAAEJzuNPRfq88Tgp7ya5D81qqjcCS9hxjSQxsy3XGCs4+DoAUt6XQYS4AHDZDcoTDDybKgztfhzWnZ5hRcUW4jmzWmzgmXz+YG48G04tGmzNaneR3CRxa3398ETfozCjBNbMlwUYRKxpkOIsocG4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LqKvRtKOmEtl0O/LIPfT6Ww9BH92bGTTBOE5+e7cYu8=;
 b=ZK4kxU0cfSoSzaGlrekshCAuITRqvJDFWhNFQ7NsWyHvnB3vKKTEGuVzbVomGV08oZS2Y4T7E/XysKc+7mK83wTINLP9qK/qEAuS6m3ncfruU0Zda5HfnuJZ/8VNPDeeNaAcrnuL7z8gbSRs0i8kTwneUTs+isi7ekrXOIDrFyQ6/RTvAzgq4YNfOOE/7jjjc7eFMVA8pG6BchJFYpK9e6ZCdljs5v/P49DY+ZDSrLV3TdYO1IjIPoagSXxqlqkFUqKxqsmdzxhBmorKvpMX05nWoPxBx1OjKoCPNEbHP4owC74Sj+LkMzUCgnGdy9HljDDUJuPbVvcB9VYiACz2BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM3PR11MB8713.namprd11.prod.outlook.com (2603:10b6:0:45::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.8; Fri, 13 Mar
 2026 21:11:36 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%5]) with mapi id 15.20.9723.008; Fri, 13 Mar 2026
 21:11:36 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 1/2] drm/dp: Add quirk to disable Panel Replay on certain
 panels
Thread-Topic: [PATCH 1/2] drm/dp: Add quirk to disable Panel Replay on certain
 panels
Thread-Index: AQHcsuQOLqUXTYhCzU2gCcLWdSjXerWs8oSA
Date: Fri, 13 Mar 2026 21:11:36 +0000
Message-ID: <CH0PR11MB5444A29186B47CC6B3FF9CE8E545A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20260313122145.1747175-1-jouni.hogander@intel.com>
 <20260313122145.1747175-2-jouni.hogander@intel.com>
In-Reply-To: <20260313122145.1747175-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM3PR11MB8713:EE_
x-ms-office365-filtering-correlation-id: 344c5c0a-013e-48b4-86ae-08de81451c84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021|18002099003|22082099003|56012099003|7053199007;
x-microsoft-antispam-message-info: =?utf-8?B?ODFhRFBHdzZ6aEdmNXVmUE5GQWFSdXdyOFVITUxMeUFGR0VqbUo3b1lkMVNS?=
 =?utf-8?B?YVhLTFJkRWszU3o3THV3Q3o4OWVya1B0aFpORi8wc2xmWkRXQUNSeW1MQzh3?=
 =?utf-8?B?YmVCMWdvWVJqZWhtVFpiTU5Jc0FPSStsUnpZRjc4aEZyL3hTb1QzQThCU1gx?=
 =?utf-8?B?NUoyakJkV1VGUVFCV1lHcVhvUms4V245R2IwTWJXTVVMZk5tNWdpRWp3Q2Za?=
 =?utf-8?B?bGZxY2Y3R2J1aERyaUt4dDhib3d4NjY2ZHZKQ1dyRGdWT2RIbEQxdmg4ZzdQ?=
 =?utf-8?B?TTdYMGhkdjF3V2ZDWlFzM1NUNFV1MlhBR3hsRGZ3K0dRZWVTTGFKVTRXNVBp?=
 =?utf-8?B?TWlzQURQZG1DdVhhUWlvNk0rQm8yeXFmR2RaMnhXN3M4U2I0TkhvcGZEKytk?=
 =?utf-8?B?ZEpIRXhLVmE3bHJYZXJqMDJYV25wSDRlVGw2N29ld3JDM1FjTUt5ZVBJY1dJ?=
 =?utf-8?B?SGFmZ2QxTHZxdmNJQ2ZjaVczcCtpcTRkRitLVG5sZXRQVlVEV1B5MXBkN0Rq?=
 =?utf-8?B?SkF0QTdnUXRySjd0TVp5c0IvdDFQczBiM05jcFFNaGhYdXJ2OGR3NDF5SUVn?=
 =?utf-8?B?dTdIaHNkakgrbDc2b0hKZEpkUlc1N3RLYlhsS1QrT1BMZlRXaXp2NWJYTVQy?=
 =?utf-8?B?NVR0ekxvclZYRFdBQWJPeFNFV1AxU3hRdHZJc2lXRGUzQmF1SkNpc0YvN2tF?=
 =?utf-8?B?ZTdwdmhacXIwcVdwTnE1YkpsUE1iMXlOVXVwRjNlb3JpTlVFVW5EcXA4NmtT?=
 =?utf-8?B?TXlJVlBFUW9oOWlsZEEySEhXaU9ubVBFbG5iRDVSUGFjc1N6RnpLMVl1QW1G?=
 =?utf-8?B?c3R3RXducUtMNU1xS1JoZ3VqbTBJTzByZE1QTGgyTW03eEpobEdLWUJ5K1po?=
 =?utf-8?B?eVRWRlpxZkdWdEZIcm1LenVPa0tqalFkLzRVNGlRNmYweVpKTng3Uzl2ZHI4?=
 =?utf-8?B?SkNDWERMKzA1S2xFTUtYMXBueWZNZitYempWTjNvemRLaURNaWFvR1NReURa?=
 =?utf-8?B?N3JudjlqbFhBYVlNR1JucUYzU2FWRVBWc25iU2Nzc3hnOXhoWkxMZ2ZJQ3hq?=
 =?utf-8?B?TXVPem1jdnVEUnFiYk9ZMmsxOEQrd1FXMVl0WXJFZnErbkhzL2pSUi9BUE1K?=
 =?utf-8?B?dzJlWDQrY2U3YTVTSllkM04vMDE1OVAyTk4rand3cVZuMERIOUZFYXJCWkUv?=
 =?utf-8?B?MHFGdVI4M2ZVcVVuRHZyYnQySVl2M1JSMWpVeGppUWphdXFBWndFM2tjK1pz?=
 =?utf-8?B?RE54ZHZQb0p5enNydUg1VzZuM0h4MUhlYnU2d09tRnJ3VjdQZmxQN3h4K3Bl?=
 =?utf-8?B?V29LK1NlemdCWEhrRTBOb0dtaktDNWNCSGtVZHJTT1RzZnJzaENUU0crVC9l?=
 =?utf-8?B?SVBVdHZJV0FuK1FzWkJHL0kxNE42cXJXUXYwTml4UUtCTVQxSUNYOWt1WU9U?=
 =?utf-8?B?cDdsTlo5K0p5NUpqRk1ubm0wa1p6STNyL2NnM01nPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDJEaExuWWhob2w1L0w4RlpoTVlCUlR2WDZKc0VqVnNxWlhYS21ySzNqUWpQ?=
 =?utf-8?B?VEZzdHdra09lN3NKeElKZFVyWGIzc0dEc0I4cVBGWlBlekw0NHM3aXpGcHVW?=
 =?utf-8?B?Z1FVYm1DU2t4QzJZc0xIS2EyclVCbjJ6QWh6TmwxWmVPcnAweWcrMk9wdkxX?=
 =?utf-8?B?eldNd0NyRDBFQUZObGgwemZGbTMyNENTd1ZQaUFmc3pCSFFnaW9XMnhLcHFF?=
 =?utf-8?B?RVFwcUN4NUgrOG12OU1ReUQrMDVsQnFzRTdMSnI5ZFYrUGl0cGV1bmZwd0R5?=
 =?utf-8?B?Q2s1UXNBbzRZTkdnRWZzV3BIcTBxRnN1THhuVnFRQnF0TGlkV09razZwcXNO?=
 =?utf-8?B?YkZtdUNvQ011Y1NaM0RMM1hYMUowakJQYUNTWm56RXN5eWxyU2lVZW9PSVhp?=
 =?utf-8?B?c2JFZlpneXIxamVXcElXOWpiMDVsd0lGYjNXR3JHTk9zR2R1RU51Q1dwSVlM?=
 =?utf-8?B?dFVLU0ZsNlBjUDdxOFp0SXFNMTVzNi9QSmlsWjBkK1BNekEvbG5jWHBMVmFa?=
 =?utf-8?B?Vm0rNXMyN2E3M1YvTVArYmxkTzltSzR4MS9HSHExRzhIV3NkSFpjclNTbEk3?=
 =?utf-8?B?ZUJPY1ZWVUtaZkR0anNYMXA3Q1kwbzNvdExONDJxT0dSakFQTTZRRGc5T1Br?=
 =?utf-8?B?bnhmNkdvM1pxNWh5SStaN2pBdExhOG1sbTZrYk03cHhPa2JKR2sxL2s2OFE2?=
 =?utf-8?B?K29SU1NaOTBtakprRk5ka1NtdnNlRG8rNmNDa1loUERHeDAwdVQ4TDVXb1N4?=
 =?utf-8?B?SzU1WFEvS2ZyYitoY1RtNXJtWlZQM1pIY0tER2h5bzF2QUhMSXg4bHVLcndD?=
 =?utf-8?B?STBDaitnVERkT2crcTEvaFJLRmxEMFRuM3N5M1NFUGY1WjFiVU5kWGZvcmZV?=
 =?utf-8?B?YjZhbTg1c3RBTk1jaGJ5Z2V5TkZNanRsUkdyVHlqczBabUkvcDQwbEZGWDNw?=
 =?utf-8?B?STdNV1BORzByc2I1YWp3aGNCOHJSRkJqQ3E0TjJGTS8rVy9kMU5xaGlXbzhk?=
 =?utf-8?B?RldnK2xzV281Qko5ei94cGY5NlN3K3VRWXA4aVR3RWw3ZXQyeHZBSlNicmdN?=
 =?utf-8?B?SG5hYlY0clFhUXZHZXF1ditCSVFDT1Z6WlAzUUNmR0NTMnR1UjVsb2RvWTB3?=
 =?utf-8?B?VlFMRkNWY2FFWHJvRUVCaTdlL21NaUxCVDAvN0ZIMGFpV3BwNWVIeHFsczNu?=
 =?utf-8?B?Ry9qbEdtNXFrZENoWndvNkpnSjRURVVLN2V3ZCtHSC9vckVyUFc5K2ZpdW84?=
 =?utf-8?B?eGNKVFphMGtYeGZQQXlBZjhSTUpyOXFGYTZ6SWhZZE1INTAwOElZQ05YZzdX?=
 =?utf-8?B?TWxya0puVk81RHViZFdFRnNMQ2dFbDhrLzRGM0p6WGljS0FuN3dYd2p5R0Q3?=
 =?utf-8?B?RUNnektZWjlWbUlEb2JldnRtMEk1bFdRbGJlK3lYMm40T2paRk5mR21SYkhl?=
 =?utf-8?B?SlFMTkR5RkcxVUVjcnlva0xpU0hSc0lPZStwdXRLOG5CL3dSaWxramY2N0wy?=
 =?utf-8?B?bVJDbHo0N2tLT1VSeFIyK3I0Q0tBUjhHb2tjaU1JaFByNnNpRjZMREcvbVVX?=
 =?utf-8?B?bFN5T1BDcTVnNGJOaWVHbVFpa0FHTlR1N2J5ajhZbjEvOWt4VXRaZ3dtemsr?=
 =?utf-8?B?Mi9NRVgrdGNRMkdIc1dMRURSUkdaVlJLTlQ1bEg0cWYxQUNtb29hVENHWDFn?=
 =?utf-8?B?VmF4ZFF4R0l1U3ZoVkoyUXlkYlV5dnQ2K2NqRzV2bi9waGwwaEdvMVdCQllh?=
 =?utf-8?B?aHQvYm5vSnFjN2tFNlBKVHBZaFNxRE9uRlp0dWYwV0lZRFBla0dhZ0NkM2JR?=
 =?utf-8?B?TXViQWF5NDJxV0srRlV1eitmN2x0VnBDaHVhRFhpSkJYdEVPd1VmTENJSWJw?=
 =?utf-8?B?bFZldHAyRmdwOVFXUzkxcU1uaVhMRVRVUXhpUisrblRabC9wVHJuUFY5VjEr?=
 =?utf-8?B?czZyaE1kRTNaQXBqWjJNd3hwdzNIM1Z4YWdocitPeU9VcW9NMXk3ZkpXeVpI?=
 =?utf-8?B?Yi9qU1Y5dmFacTNaMmJMWUFRblphWXNtUWR1T3ZzelV0anIyZzdoNHlIaE5H?=
 =?utf-8?B?RG1pTmtEand6WjdnM2hpc0dmUVNOa1BNQ1k1QUdmSG4weEN2YVhFNVBVczRH?=
 =?utf-8?B?RG90NFlTcktMOWllM2VXMlk1STV0ekRrS0orNW1MbjhqMFpmZGxVeUQ0SVp0?=
 =?utf-8?B?aXJLM05kdDVSM2NON281U1llOGFtM2I2Myt2QmJBR1RCTEpCZHBhSWc5QmZw?=
 =?utf-8?B?OWdIRHdVMytpeW81d1hxNHNlS3RTSHMzampNeThMOEZmSmdQd3NURGw3MldO?=
 =?utf-8?B?TXk4RGVEbHpGbjZxM2plbldlbXU3SDloWW9KdkVkOVk1b0ljL0RIbEx3MWRv?=
 =?utf-8?Q?6Ap/i3uX2G5WawVSCAIgoId0rJ6ALpfGeHmoPGC3kBR4F?=
x-ms-exchange-antispam-messagedata-1: oWhTpLVSjtTeUQ==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nNxsIXkWOtwOe5i7U7H2Dv5NIKwAFSbdp/cMQyQpFh+hbXqpcPdjI8yE6safSDzkzkQdP6wzUbnz76399Rl/Qn1v/YudY+EDeMHdCYGrZr7W3Yu1hKfLeNqmQs6KWx85Np+6XmJg1ytydCkSIdjiLyJ+IC6zCbc8QDPtMn9SvUprxQKYw7EYLDC3LBpZrOkpMQ1NLqipMK0vbm8c1jpHd3X9spZ1RTHu3RW/uSCfKQGPfpkX7XfXjCEEPFnDQGEZVxRl5pdrVBG7eYS2QxLLlX3ukjYk2e3OD0I7QzdrZ1a6mBzAt76BV4RwnOg7IzmlQJ5Rnt92+kSj5gEvG3twew==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 344c5c0a-013e-48b4-86ae-08de81451c84
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 21:11:36.4070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cTp9UTZ3AXFUtJaYE39WeIAsI+1q2Bp5QaMmaxl+ZIodmId8HKbYnuZ9H2ZzOEmH3NsXEnA2JIRanUcyH8iOef+jcscB4wMq7ngiUIqQe6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8713
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8ACC228A0DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEludGVsLXhlIDxpbnRlbC14ZS1ib3Vu
Y2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdhbmRlcg0K
U2VudDogRnJpZGF5LCBNYXJjaCAxMywgMjAyNiA1OjIyIEFNDQpUbzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQpTdWJqZWN0OiBbUEFUQ0ggMS8yXSBkcm0vZHA6IEFkZCBxdWlyayB0
byBkaXNhYmxlIFBhbmVsIFJlcGxheSBvbiBjZXJ0YWluIHBhbmVscw0KPiANCj4gV2UgYXJlIGN1
cnJlbnRseSBvYnNlcnZpbmcgcHJvYmxlbXMgd2l0aCBMRyBwYW5lbCB3aGVuIFBhbmVsIFJlcGxh
eSBpcw0KPiBlbmFibGVkLiBBZGQgbmV3IHF1aXJrIERQX0RQQ0RfUVVJUktfTk9fUEFORUxfUkVQ
TEFZIGFuZCBzZXQgaXQgZm9yDQo+IHRoZSBwcm9ibGVtYXRpYyBwYW5lbCBtb2RlbC4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9kcF9oZWxwZXIuYyB8IDIg
KysNCj4gIGluY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwX2hlbHBlci5oICAgICB8IDggKysrKysr
KysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9kcF9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1
L2RybS9kaXNwbGF5L2RybV9kcF9oZWxwZXIuYw0KPiBpbmRleCBhNjk3Y2MyMjdlMjguLjk2Yzhi
NTNiYTRlNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2RwX2hl
bHBlci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9kcF9oZWxwZXIuYw0K
PiBAQCAtMjU0MCw2ICsyNTQwLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcGNkX3F1aXJrIGRw
Y2RfcXVpcmtfbGlzdFtdID0gew0KPiAgCXsgT1VJKDB4MDAsIDB4MjIsIDB4YjkpLCBERVZJQ0Vf
SURfQU5ZLCB0cnVlLCBCSVQoRFBfRFBDRF9RVUlSS19DT05TVEFOVF9OKSB9LA0KPiAgCS8qIExH
IExQMTQwV0Y2LVNQTTEgZURQIHBhbmVsICovDQo+ICAJeyBPVUkoMHgwMCwgMHgyMiwgMHhiOSks
IERFVklDRV9JRCgncycsICdpJywgJ3YnLCAnYScsICdyJywgJ1QnKSwgZmFsc2UsIEJJVChEUF9E
UENEX1FVSVJLX0NPTlNUQU5UX04pIH0sDQo+ICsJLyogUHJvYmxlbXMgb2JzZXJ2ZWQgd2l0aCBM
RyBwYW5lbCAqLw0KPiArCXsgT1VJKDB4MDAsIDB4MjIsIDB4YjkpLCBERVZJQ0VfSURfQU5ZLCBm
YWxzZSwgQklUKERQX0RQQ0RfUVVJUktfTk9fUEFORUxfUkVQTEFZKSB9LA0KPiAgCS8qIEFwcGxl
IHBhbmVscyBuZWVkIHNvbWUgYWRkaXRpb25hbCBoYW5kbGluZyB0byBzdXBwb3J0IFBTUiAqLw0K
PiAgCXsgT1VJKDB4MDAsIDB4MTAsIDB4ZmEpLCBERVZJQ0VfSURfQU5ZLCBmYWxzZSwgQklUKERQ
X0RQQ0RfUVVJUktfTk9fUFNSKSB9LA0KPiAgCS8qIENINzUxMSBzZWVtcyB0byBsZWF2ZSBTSU5L
X0NPVU5UIHplcm9lZCAqLw0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1f
ZHBfaGVscGVyLmggYi9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcF9oZWxwZXIuaA0KPiBpbmRl
eCAxZDBhY2Q1OGY0ODYuLmNhMzZiNWE5YzFiNiAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9kcm0v
ZGlzcGxheS9kcm1fZHBfaGVscGVyLmgNCj4gKysrIGIvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1f
ZHBfaGVscGVyLmgNCj4gQEAgLTgyNCw2ICs4MjQsMTQgQEAgZW51bSBkcm1fZHBfcXVpcmsgew0K
PiAgCSAqIGRyaXZlciBzdGlsbCBuZWVkIHRvIGltcGxlbWVudCBwcm9wZXIgaGFuZGxpbmcgZm9y
IHN1Y2ggZGV2aWNlLg0KPiAgCSAqLw0KPiAgCURQX0RQQ0RfUVVJUktfTk9fUFNSLA0KPiArCS8q
Kg0KPiArCSAqIEBEUF9EUENEX1FVSVJLX05PX1BBTkVMX1JFUExBWToNCj4gKwkgKg0KPiArCSAq
IFRoZSBkZXZpY2UgZG9lcyBub3Qgc3VwcG9ydCBQYW5lbCBSZXBsYXkgZXZlbiBpZiByZXBvcnRz
DQo+ICsJICogdGhhdCBpdCBzdXBwb3J0cyBvciBkcml2ZXIgc3RpbGwgbmVlZCB0byBpbXBsZW1l
bnQgcHJvcGVyDQo+ICsJICogaGFuZGxpbmcgZm9yIHN1Y2ggZGV2aWNlLg0KDQpOSVQ6DQoNCkkn
ZCBtYXliZSByZXdvcmQgdGhpcyBhcyBzdWNoIGZvciBjbGFyaXR5Og0KDQoiIiINCkVpdGhlciB0
aGUgZGV2aWNlIGxhY2tzIFBhbmVsIFJlcGxheSBzdXBwb3J0IGlycmVzcGVjdGl2ZSBvZg0KcmVw
b3J0ZWQgc3VwcG9ydCBzdGF0dXMsIG9yIHRoZSBkcml2ZXIgc3RpbGwgbmVlZHMgdG8NCmltcGxl
bWVudCBwcm9wZXIgaGFuZGxpbmcgZm9yIHN1Y2ggYSBkZXZpY2UuDQoiIiINCg0KSG93ZXZlciwg
dGhlIGN1cnJlbnQgd29yZGluZyBpcyBjb25zaXN0ZW50IHdpdGggdGhlIGRlc2NyaXB0aW9uIGZv
cg0KRFBfRFBDRF9RVUlSS19OT19QU1IgYWJvdmUsIHNvIEkgd29uJ3QgcmVxdWlyZSB0aGlzIHRv
IGJlIGNoYW5nZWQuDQoNClJldmlld2VkLWJ5OiBKb25hdGhhbiBDYXZpdHQgPGpvbmF0aGFuLmNh
dml0dEBpbnRlbC5jb20+DQoNCi1Kb25hdGhhbiBDYXZpdHQNCg0KPiArCSAqLw0KPiArCURQX0RQ
Q0RfUVVJUktfTk9fUEFORUxfUkVQTEFZLA0KPiAgCS8qKg0KPiAgCSAqIEBEUF9EUENEX1FVSVJL
X05PX1NJTktfQ09VTlQ6DQo+ICAJICoNCj4gLS0gDQo+IDIuNDMuMA0KPiANCj4gDQo=
