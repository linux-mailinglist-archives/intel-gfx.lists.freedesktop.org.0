Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D35B5500A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 15:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D824B10E1CA;
	Fri, 12 Sep 2025 13:51:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GwaRaXA6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41AB310E1CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 13:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757685114; x=1789221114;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=fkhrkNZza2HGavd8ES7CXfNTpbig1RzmxKB4prLE4qY=;
 b=GwaRaXA65SQPlzNk0i52CraOZZDBKEzOPxAr9KOP++FkWVaLQnfM5LB4
 eFspavhsbuRNTgy6xq3ilaLepT0rl5ssz7QKRtBLWBnt5TkFu4GURGAYL
 MgZlUrZzQpa03WDNfJA5G0NrX2xxPRQUoH2k763TFGRg+rodGjvtkci5M
 IZRzucr22tllIN/PTd+HAQWXZu2c0udq/QUh+TQE59ep5g+VtiKppsUOs
 B9kaNFu28x4SdsRdtJMRGSfcZgbXDlMMRdaW9JseZIx4iriOHSu8X0zhM
 D320UBb/8kN+WRiIF5u4X+gjtwpYwxCk33bRQ2LEv+xWHjLsp1CJpeFJc A==;
X-CSE-ConnectionGUID: 4ky4SIfESXK3RstSwfD0+A==
X-CSE-MsgGUID: NFKqUy4GRH+yvF6v8faUeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="60176961"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="60176961"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:51:53 -0700
X-CSE-ConnectionGUID: LjcRqajaSjm3iZG4hlampQ==
X-CSE-MsgGUID: 2MhDJfeZROuMyCmRxSqUWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="178291921"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:51:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 06:51:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 12 Sep 2025 06:51:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 06:51:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fWxF8K9WrKLcS/JIsDvb6Lx3s79RgDCjIOOuKlzUxqfq/lolhvS7wLWyCXbOauNMzB9tL5LHW6FfZm1PpKrw+ifxbcdObTNruKIIauWmJbdprwdWlD/lEbrdbbdX/ymlIgZi8TOIF4V2tJC/L9aEf15tXztU24ccl7dM8D6aThFeg7Cp/Wllk/1pdvnz7mmottFKlarxAeVcSbZU7aEMIeIcxQtGbCAKwaupgvw7iYHwErpuhiUV3mGBkU1MOJz64VrhdCKaPRDx8HH1v/zfMfdOFu2qsOLsHxKNuuSWrt61/uhRk3ZdV7c5GlX0Hsl01z2AK9179OXzjUEHOVIa6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fkhrkNZza2HGavd8ES7CXfNTpbig1RzmxKB4prLE4qY=;
 b=FpggbA8u0H85y0Cdv+FBxC0w2j/dbcKhDtNJ9yYY0r38L3osu6m53MnuIz3dqcmPDgmm2IuMCYUMxipJVUUaW/PNEdPH24/ht2NAgUgEuWvsUsjghpRiz+Q4FArWtpC4MICLS35lW2uTeeRYA017JqUF/Imn96bgkxTDtItLnFtGmpK8sSJdzf0LTyLsYgt8LhV+uUyjEguC8+M8qP88vet1rXQkQwGymlRrU7LKOAKYJOGQNbj9XfWrL2TgfAghfznXOsD0pHyBzN7YRo+Sdb51OLJw0eFKN6ualNwOd5nLxi3DgmbNZ9L8jKK+xIRUsLy6ZT7Jw6ccbrs8+vdZtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB7365.namprd11.prod.outlook.com (2603:10b6:208:423::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Fri, 12 Sep
 2025 13:51:50 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9115.017; Fri, 12 Sep 2025
 13:51:50 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 1/6] drm/i915/pm: Simplify pm hook documentation
Thread-Topic: [PATCH v2 1/6] drm/i915/pm: Simplify pm hook documentation
Thread-Index: AQHbkr+5ZoZKjMACsE6jO8V61JFT67SQs0aA
Date: Fri, 12 Sep 2025 13:51:50 +0000
Message-ID: <33688c05df9744e42a885fc667c80bf1034f1e80.camel@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20250311195624.22420-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB7365:EE_
x-ms-office365-filtering-correlation-id: bb51be3d-1fee-4b5e-57fb-08ddf2038626
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VmVlakFFSjI5bnU0bXdsWVhBY0RvWHRkSFpNbUo4U056aXk3MnVDUHgzbUZz?=
 =?utf-8?B?dlBxcG5RMlZLdWJRek5FVFV0OW1BMytadFFxdFViOC9LbTVKWkRJeStKaC9u?=
 =?utf-8?B?aDM4aExRR2Q0d09KbHRrZk41dll5Z1ZCbFZWVXlubFpGbG1oN0ZFZ0paVHFV?=
 =?utf-8?B?aUtFMlNTRFU0U1RqOG9DR1MyTGE1aytTUGI1RFVnTm84L1NvVzRldnR4ZWVH?=
 =?utf-8?B?cHE0WUkwQ0lYbmJCN3BQRGNUd3U2TjhrL2I1UFR1S3QrYVlBT21CRyt2YklN?=
 =?utf-8?B?bUxxZHlJSGkyb1FDWW9lTEtZbDFJZDNyMlVmM0JsdDVSTXhxVkp4Q1ZWUmxZ?=
 =?utf-8?B?bHhlR0tUZFBQSmRBOUVYSnV0RTlOUTQ5djBiaWJuekNOMk9MN21PNEtGeXls?=
 =?utf-8?B?ZGpJSW9oZ1Jvd2pCOXAvTG9HUVRRdStFZnRiNWh3NWNsVDhXUzFpMjNmb2Ex?=
 =?utf-8?B?V3cwQTB0YW5Edk1PbWlsWUg5b1dLRG1FNFdzM09qdE4yS3FuTVhHUnFBT20x?=
 =?utf-8?B?RUdQNEROeEJ2aDcvV2xtR3JQbEY2UFRKYzZLdWljeU45enl0N2FYSCtqcW9F?=
 =?utf-8?B?QXphVTJGWEN5LzJVblZPQ1Z5QnduNWc3VFJzQnA1UE4ySVFGZVdMS25RVWhW?=
 =?utf-8?B?VkNXTmpycEhaejJlbjFFRHVVb1hJSTJwM2w1OUhjTHowc2hqSXVWNFBqdWtC?=
 =?utf-8?B?Z05IaVdVMWNBZ0M5eXFiU2hQdkNlR1k3QVhjN2R4M0N0V3R1dks1R09HSWM4?=
 =?utf-8?B?cmVTeXBjc2FUZGFjb2M2ZkFoTTdMM2VhWE95c1F2cDQ3cVdWRDlMTXFOU25p?=
 =?utf-8?B?aUtqZEdxVlQ1enhYdlk1cnpZSlhSbmdCeWQwZzlUNnZrdW44ZnRNbitVYXh0?=
 =?utf-8?B?NDBENkYvYUJVVVFkWUtzdmhubk0zc3dmS1hvZmpqa0lrSHBNNVlUc0gwMThh?=
 =?utf-8?B?Q25yNmF6ZW5CNnZzK1Vhb3RPaVVtaVBrOUVTTWpFbFNFcm52YnJEdWdHN3No?=
 =?utf-8?B?dEpUSDZMek85TytYRUNncUorUU1LcmFjT3JXc0VMdWUzZ3NadjhJSW81Vmlz?=
 =?utf-8?B?Tm1FR1JQK1VLellCUTlDQUQ5KzN0VEt4eDhncmtYV2lmam5CU0xSN2dtU29K?=
 =?utf-8?B?VGhJOWx3Y3Y4NlhmVUtaVTAvZ1pWU0YrcGd0dHVwK1NzckM5OUgramNNelVx?=
 =?utf-8?B?MkgyNW9QSy9jOTBKMWhoaXpva2ZySWs1bTFXSmI4N2R4Mld1Zy9PdlFjYnY1?=
 =?utf-8?B?bVFVM2RLZjJDMnBWMlo3UmFFSUhFTndYVWJuU1hNWG5mS2xXS0Y5Q0k2QzZR?=
 =?utf-8?B?cEpsK1VYKzd4Ui80d3hCUHVvam5lS1dTZ096VHRBUWhUdWk5KzhaU0t5UW9w?=
 =?utf-8?B?Uzl2N1RwY2M3RVJoR0J1cFRVVUVITjBicUkwdHNWN2xQU0JoQ25YK2tXbVlI?=
 =?utf-8?B?aW14c3dTQ3l1Zjc2TFlONWdCUDNNRmVmVk9uWHZhYVV1SDh1c084MzcxVkkv?=
 =?utf-8?B?bGg4MEZ3MXcwWHFPcVh6cDV5M2JGR0p6Z05hU3FtelkzYkthT2x2ZXIvQjNT?=
 =?utf-8?B?ODFZYVViaC9CMEpkczErbGJnZkI2azgxNGlWbWh3REhIS1FjWnFwUEJORVI0?=
 =?utf-8?B?WW1sZGVMTk9WcmVtbHMzWFVRcHJBcWVkRFprNmhMRVdBVXR1ZVlyZmtSNm51?=
 =?utf-8?B?Q1lUbm1HUHQ1OUtsZkZCRHFjRThPcUNubXo2dlRudXZaNjJmcCt1NHY2K2dx?=
 =?utf-8?B?aGM5WjNrWUxHbFpLS3BtS002b0hEOGE0UVpZUGNERm4xbk9BdkdITXZ5UHll?=
 =?utf-8?B?SkVhSnpEZjdiVDA1RXd4ZE5UWjlhNUM5a3VLR0V4UTJFVk93TXh1WTBtc3lL?=
 =?utf-8?B?M0pneDFWSTAxenl4b2JnQUU1WG5ZSHQ2KzMrMDc4QWhFbkZKZWhGaUR0NHl3?=
 =?utf-8?B?NWZnQmJLMWpJaW1WWkpXa2srY0tlZm81YW1kdGJmWXoraW1YV0tLQm9oTFRJ?=
 =?utf-8?Q?R4/DBNAll7/lG4lYsAOwnI2Pnghzqw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OVRkYmc0ZXBvSHVjUVBGUFhwV2ZtQVVTTzRSN002QXU5emg0S0hVSWRnSlB4?=
 =?utf-8?B?bWVWQnUzZVJzeGhpd3NPbFhaTjZwRFMwNGV4bnlhTmt1T2NxaDFKNVdscHFC?=
 =?utf-8?B?VklYL1NGNjdWNVZxbm1WaWJ1Q3ZMSXBQam5NNTZUZFZ4ZEREVzcvWUNWUnFp?=
 =?utf-8?B?c0x6c2RpSXB1MEJ1a1lPVmFNYWJ2WFVSY21ieVFsM3VIaTNCQ3RFdFVRbEtF?=
 =?utf-8?B?Q2docTJ5clpNOHhvOXJPdmxZU3k1UWlqVEZBV0Y5bVhwVGJrbmVsZ2tON3RN?=
 =?utf-8?B?dUtFVGdtOHp2dXdhMzZyRjJsbXp3N3N5bXNia1NGRzVuVDZQVkpINThyVmd2?=
 =?utf-8?B?RUk3VVdJQk9WNVB1S3MxVjJXU3F1Rk9uUGovSHhWN09UZFZhak5TNWYyVE9N?=
 =?utf-8?B?SzFEUGlNa1hDd2JVTXFvYWNmSWErTExINS9kd21JTlpaeVFlQ2RwaWgwUkNh?=
 =?utf-8?B?UHlQenpZZUpOVkUwTnFlTis0RlVnY1J6bzhIeVdzRS9DY1JUU3J1Mzlmenor?=
 =?utf-8?B?NWU2TnF3RTJQbGxWbnF2VnJmbjdFcFZXMTZFRWVXOGllak5TWGVpTkc5cVJL?=
 =?utf-8?B?eXd0emF5TWhuc2ZEWmdydDdSM1h4VU9KaGhNT21CNlFVeEFYdUovWXh3allN?=
 =?utf-8?B?R3VBb2ZIUDIybUg5c2M3ckdqSWJQTkNvUFV3dHlJOWxOL0tMY3hSZU1NUkFt?=
 =?utf-8?B?TGQxOW93MGtPRWp2S2prcTh2VlZDbzRZSzJkZnR6ZVhLZ1QyTkdqcnhYMVBh?=
 =?utf-8?B?NDNQc2g0bCtrUGMyN2xlRGpQRlM5dlc0RUFsYjVScmxTeEhxS05ZMVpYUVB3?=
 =?utf-8?B?OVAvajc4Q0hoNzMxa3VzbmJKN2x2Zm9XcSs1VXh0YUFkOUFpTUJ1OWxPekZ1?=
 =?utf-8?B?Zk1oakRwRjlLbjF1MGRLWllSWFlFb2JGVHVYZUZxa2hDRElvQnRUclMwWU5W?=
 =?utf-8?B?TWY5NkxuOUk0blN1NE5nREI2Lzk5L080L0tMOEY1SkRyNGVyNWZLVFhmL2dr?=
 =?utf-8?B?dENwWTZUempycThkT2NETzVYRTl6b0hiSXhTY1pVTUxiekZSZU1kb3doSVBm?=
 =?utf-8?B?ZW0wUnBQQWRVNGppclpTZzJQR2dGekUvY3hkcUM3THljYmtHckgxRjYveUhU?=
 =?utf-8?B?bXljSzR5RUQrMUNjTHk5YnRZbHZFMXc5NXNQTkgrR2lnOUVVRmM5Y2Jhd1Zt?=
 =?utf-8?B?RWxMcmtoOTRlU1lTZE9yNDU4MkIrZytDejFlamxiTllKdHk1TVczNkpWYkdX?=
 =?utf-8?B?TjZxYkVvU241eURybFNKd1VKb0FSYXpvYzMzM3NWWUlwM1c2TlVOSEczM2JC?=
 =?utf-8?B?RHdUKy9CSDVSNExsY0pxWVN6L1gxU29YRGMxYmY0cjIya0Z6bG80QTdxZlBj?=
 =?utf-8?B?OERqOVBJZ2pMUDV6U0xxY1JSOFMwT3Mzb3NORDhjTXNXclJ5YmdNUTVqUDIw?=
 =?utf-8?B?VjhxV0Y5YkR1S25yVVZFdVVVS3QwSG11VHNmL0RiYitMdU9Xd2pXb2dMZUFp?=
 =?utf-8?B?R0tuRzhiUUNpNDdYR3RIZHBpMExYOUsyV2pRRDljV1BlaGV0bzZtbzFuYXBX?=
 =?utf-8?B?b01GbGo0VDhVbndIYWJLYkNkU2d0RDE0aWZRalVsSDlBQW9YaDBlamNNZzZj?=
 =?utf-8?B?WWg0VXIvZWFaWS9DL1kzYWhyc05CR2xmd3p1Q2p4NXdsZUtTRGZzQlhKTi96?=
 =?utf-8?B?RzBDWnYrdFdFYW93blJSU1R0VWJzMlBXTzI3UVpEY1dZRk4zRlpneGROS1pQ?=
 =?utf-8?B?YllKYlVzcVJHMS8yU1htMUdZcnJKeEJKWHE5S2RCeVpsUnRGRHRKNU1pQTIx?=
 =?utf-8?B?clA1b2RsYTdBdm9tRzZENzQ2QTVmelpReWRjdlRDeXFGUERmM0tCMEp6Y2Fu?=
 =?utf-8?B?SlloVi9yNXJ2cEJqYWR3ekVqTm1NQmN3V3I4NXAvV3lmY211U1BJdmxVOEd4?=
 =?utf-8?B?blY0cWlrTXVLbk1JeTNIWUphSWxIQ0NaQjdycTl3dkVObGVnZklrTkV0ZVNZ?=
 =?utf-8?B?aG03MG9RNkJlcjA2VW9kZDI4RGJvVkc2VHVuSjNSR3YzV2lQUlM5QVlaY0h4?=
 =?utf-8?B?YzIyVWY0MjlnZmN5cG9yMmpZd3FGNUROWmQrbDFTVklJL1pwSE1xRnRQNnJw?=
 =?utf-8?B?N2RHVTNqWHRtVUwxMUM3MWdLMDNlajQ2R1l4OUw4T0JBV2E1T01DeW55R0Zl?=
 =?utf-8?B?aG95SmcrYWdDakNEVTB6NjVERGI0bDBBcnlSVjhta25yUmFudWFUU2lwUjFq?=
 =?utf-8?B?TmtzS3F4TncwYnI1ZTRVWmJnTEtnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B5B271D3DB7F0A41BCD8D521EC242DBE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb51be3d-1fee-4b5e-57fb-08ddf2038626
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2025 13:51:50.5495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sNFBNNu9T5VLGUKLVR/r+1m89bPUckh/QrXX90whzwNCui3+20hh1aWEqTrw0LG2INToWD72wJ95K9cy0BMeeRsvy5pcYaQypgvZyW5Iu7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7365
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

T24gVHVlLCAyMDI1LTAzLTExIGF0IDIxOjU2ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gU3RvcCBzcGVsbGluZyBvdXQgZWFjaCB2YXJpYW50IG9mIHRoZSBob29rICgiIiB2cy4gIl9s
YXRlIiB2cy4KPiAiX2Vhcmx5IikgYW5kIGp1c3Qgc2F5IGVnLiAiQHRoYXcqIiB0byBpbmRpY2F0
ZSBhbGwgb2YgdGhlbS4KPiBBdm9pZHMgaGF2aW5nIHRvIHVwZGF0ZSB0aGUgZG9jcyB3aGVuZXZl
ciB3ZSBzdGFydC9zdG9wIHVzaW5nCj4gb25lIG9mIHRoZSB2YXJpYW50cy4KPiAKPiBSZXZpZXdl
ZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpSZXZp
ZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cgo+IC0t
LQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYyB8IDI0ICsrKysrKysrKysr
Ky0tLS0tLS0tLS0tLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEyIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
aXZlci5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jCj4gaW5kZXggY2Uz
Y2M5M2VhMjExLi5iZTIzMmNhZWY5ZGYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcml2ZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVy
LmMKPiBAQCAtMTY2NCwxOCArMTY2NCwxOCBAQCBjb25zdCBzdHJ1Y3QgZGV2X3BtX29wcyBpOTE1
X3BtX29wcyA9IHsKPiDCoAo+IMKgCS8qCj4gwqAJICogUzQgZXZlbnQgaGFuZGxlcnMKPiAtCSAq
IEBmcmVlemUsIEBmcmVlemVfbGF0ZcKgwqDCoCA6IGNhbGxlZCAoMSkgYmVmb3JlIGNyZWF0aW5n
IHRoZQo+IC0JICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaGliZXJuYXRpb24gaW1hZ2UKPiBbUE1TR19GUkVFWkVdIGFuZAo+IC0JICrCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKDIpIGFm
dGVyIHJlYm9vdGluZywgYmVmb3JlCj4gcmVzdG9yaW5nCj4gLQkgKsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0aGUgaW1hZ2UgW1BNU0dfUVVJ
RVNDRV0KPiAtCSAqIEB0aGF3LCBAdGhhd19lYXJsecKgwqDCoMKgwqDCoCA6IGNhbGxlZCAoMSkg
YWZ0ZXIgY3JlYXRpbmcgdGhlCj4gaGliZXJuYXRpb24KPiAtCSAqwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGltYWdlLCBiZWZvcmUgd3JpdGlu
ZyBpdAo+IFtQTVNHX1RIQVddCj4gLQkgKsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhbmQgKDIpIGFmdGVyIGZhaWxpbmcgdG8KPiBjcmVhdGUg
b3IKPiAtCSAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJlc3RvcmUgdGhlIGltYWdlCj4gW1BNU0dfUkVDT1ZFUl0KPiAtCSAqIEBwb3dlcm9m
ZiwgQHBvd2Vyb2ZmX2xhdGU6IGNhbGxlZCBhZnRlciB3cml0aW5nIHRoZQo+IGhpYmVybmF0aW9u
Cj4gLQkgKsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpbWFnZSwgYmVmb3JlIHJlYm9vdGluZwo+IFtQTVNHX0hJQkVSTkFURV0KPiAtCSAqIEBy
ZXN0b3JlLCBAcmVzdG9yZV9lYXJseSA6IGNhbGxlZCBhZnRlciByZWJvb3RpbmcgYW5kCj4gcmVz
dG9yaW5nIHRoZQo+IC0JICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgaGliZXJuYXRpb24gaW1hZ2UKPiBbUE1TR19SRVNUT1JFXQo+ICsJICog
QGZyZWV6ZSrCoMKgIDogY2FsbGVkICgxKSBiZWZvcmUgY3JlYXRpbmcgdGhlCj4gKwkgKsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhpYmVybmF0aW9uIGltYWdlIFtQTVNHX0ZSRUVaRV0gYW5k
Cj4gKwkgKsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICgyKSBhZnRlciByZWJvb3RpbmcsIGJl
Zm9yZSByZXN0b3JpbmcKPiArCSAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGhlIGltYWdl
IFtQTVNHX1FVSUVTQ0VdCj4gKwkgKiBAdGhhdyrCoMKgwqDCoCA6IGNhbGxlZCAoMSkgYWZ0ZXIg
Y3JlYXRpbmcgdGhlIGhpYmVybmF0aW9uCj4gKwkgKsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGltYWdlLCBiZWZvcmUgd3JpdGluZyBpdCBbUE1TR19USEFXXQo+ICsJICrCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBhbmQgKDIpIGFmdGVyIGZhaWxpbmcgdG8gY3JlYXRlIG9yCj4gKwkgKsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc3RvcmUgdGhlIGltYWdlIFtQTVNHX1JFQ09WRVJd
Cj4gKwkgKiBAcG93ZXJvZmYqIDogY2FsbGVkIGFmdGVyIHdyaXRpbmcgdGhlIGhpYmVybmF0aW9u
Cj4gKwkgKsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGltYWdlLCBiZWZvcmUgcmVib290aW5n
IFtQTVNHX0hJQkVSTkFURV0KPiArCSAqIEByZXN0b3JlKsKgIDogY2FsbGVkIGFmdGVyIHJlYm9v
dGluZyBhbmQgcmVzdG9yaW5nIHRoZQo+ICsJICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBo
aWJlcm5hdGlvbiBpbWFnZSBbUE1TR19SRVNUT1JFXQo+IMKgCSAqLwo+IMKgCS5mcmVlemUgPSBp
OTE1X3BtX2ZyZWV6ZSwKPiDCoAkuZnJlZXplX2xhdGUgPSBpOTE1X3BtX2ZyZWV6ZV9sYXRlLAoK
