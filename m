Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E590F9446A8
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 10:32:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7873610E8BC;
	Thu,  1 Aug 2024 08:32:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sj8ifGyG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09B210E8BB
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2024 08:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722501162; x=1754037162;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JGSNdGUO6sRKJOqLkV6AWbwJ+Foia8izMbiI2fcd83k=;
 b=Sj8ifGyGCwahBCQxkO73SZVycIjqPLJwRuxX4AVBVQIschEmSQJL5zmK
 ClSOfzEjaifTq9n1xZ2VJaglFN/MXrm38Bouoowdt2o1BB6u5TcRNMHO6
 9uTXzCHbTmO5TO6JCjQ9VLdPdZqzzeNWgX7snvmGmkun2/daPfA+Cjyj5
 TtPR/3mnswiDL6LKEBr9v0iOKOzXvq5J9eIPkKL5gjmZUlcyypKJbu7Mx
 0HwwSCkFGJjyJQKwA/zvcb9BakItKEfaSjGJB6THaaGthNIPDDTeQOWdB
 G7hfGxTr2F3ZMv54nFEJDOFTYjaVAB/UZR+N/bcIxr+j9aC+7TMMzbpgk Q==;
X-CSE-ConnectionGUID: xtqO8GnJTU6AxfV+ieFwMg==
X-CSE-MsgGUID: L0sBWI9JSse0p+iTsTRS8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="42961538"
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="42961538"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 01:32:42 -0700
X-CSE-ConnectionGUID: 72lFPUGESRSwAcHzg0MELQ==
X-CSE-MsgGUID: ue0taHubRauZjrHIOHcXDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="78266575"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 01:32:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 01:32:39 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 01:32:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 01:32:38 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 01:32:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aN0MhW8+XvpGx/KPsBl8WnCWX3Ejc4YSqIHcV39v2IdCutmrVqkWHUgsgbLnmoF1IUveg1HRw0RRNdgtQdznNm0ksOB+ioZaBbSHakn8teCQ2zBs+g+x/HjIrgZ73zHvooNL9R17QXrNUkV6MskMXwmZHoravNUVRODOHSLF0j62yhbHtwaK+N7myHe1UK6hEfLlIbCGY82gU+8IHRzxKuDYfBuRNO4Xjx0y9+f3P8C6yDoDXFjZPFB2JLL78bBBnzv2/0M1XHfNhGHBQvmmWywOJ094Wa24hVOuDaq6r+h3YDa3t7SEmHt8VSa878D5RL4wRYGdnptqT+EdPJDBvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JGSNdGUO6sRKJOqLkV6AWbwJ+Foia8izMbiI2fcd83k=;
 b=nnt+UshNDNWFQcHswzukq9LLUUv0QG5//i2wD9TSn92cYpNoTjlq7THxZ/6H0q8md8B3yix78FjbwuU7GGwPijdky3HxIrJvatH3fx6FBVUgoFD91kfNOs47yijzjQvS/R5OheNYLjmvPjwHRsdJCL4tXyyrcKa3Tz12QPtPYUpOmH/Um+gbQWcMLF5uaWcHhf+QSfIqHGu059MbHuts+kiB4TwzubRBueg2qcHH5Q82VhK7vcFafeyZ07Ox6gQMgzMJkS+sjpF4Eh4wPwAumoR+1XsMEU8xLgg/GwtTZplAgJDegshwTMHNYaM8N9IcyxCPtNFM5DNggJPxGHmKVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5664.namprd11.prod.outlook.com (2603:10b6:a03:37f::18)
 by SJ0PR11MB5917.namprd11.prod.outlook.com (2603:10b6:a03:42b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 1 Aug
 2024 08:32:36 +0000
Received: from SJ0PR11MB5664.namprd11.prod.outlook.com
 ([fe80::ee27:3042:812e:991c]) by SJ0PR11MB5664.namprd11.prod.outlook.com
 ([fe80::ee27:3042:812e:991c%3]) with mapi id 15.20.7828.016; Thu, 1 Aug 2024
 08:32:36 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Nikula, 
 Jani" <jani.nikula@intel.com>
Subject: RE: [core-for-CI PATCH] scsi: sd: Move sd_read_cpr() out of the
 q->limits_lock region
Thread-Topic: [core-for-CI PATCH] scsi: sd: Move sd_read_cpr() out of the
 q->limits_lock region
Thread-Index: AQHa4+wig5A0z50PhkaV9IagL815FLISEqnA
Date: Thu, 1 Aug 2024 08:32:36 +0000
Message-ID: <SJ0PR11MB56649C5D570B7F7E07F74B67E0B22@SJ0PR11MB5664.namprd11.prod.outlook.com>
References: <20240801082257.506006-1-luciano.coelho@intel.com>
In-Reply-To: <20240801082257.506006-1-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5664:EE_|SJ0PR11MB5917:EE_
x-ms-office365-filtering-correlation-id: 89d63a47-cfe5-41d1-af87-08dcb2047f15
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ck5CN1REaHpCM1FwWkw3YkV3cDV4aXdFQzlUS0NqN1R6MTExd1pRZ2Vndmh5?=
 =?utf-8?B?QmdXdlFnQnNwMGtjTWhoamE0NGkrVzBVOFJDRzhCUE83dEVDYmVoSWozSkxj?=
 =?utf-8?B?ZHM3WVJpL0pibVlzY0lMYVNCSzYycHplQjZJSys3YlpiOE5oTW0wMjJQU0FZ?=
 =?utf-8?B?ZzBVV1hONHRxZm0zNW1tNFJOOHh1OHdyUzVhSWo3M2d6Z3NJbmhENGlQNS9M?=
 =?utf-8?B?MnpERVpTbHBnbHdhN2h5OEZjNmw1UnlDeWtHWWMvMDMwVTExckoxWTIrY2Uw?=
 =?utf-8?B?WGRGVDk2Z2RqZmlPTy92bC9YenpwUTQ4ZWVvRENEbTJVeEw4MW1WVWJiN0Fv?=
 =?utf-8?B?V1VpMHZSSVdTQWhhclU0ZnBNajNmODhPbGJBaGI4YlR2c3pLMDlSenNUSnNW?=
 =?utf-8?B?SzFvVnAxK0p3VXpPSzF4ZTVBclpLcGRQUENUb1pmSXcrY2tIaVBHMThkR1N5?=
 =?utf-8?B?WFZ6aEhFSXNzSkM4SUEwU0VSTDlGcXpKU1VsZUtIM2VoT2x4VWF5ZThrMWlw?=
 =?utf-8?B?K21Udi8zVytOS2ZIcUFkOCtEYnFpQWJlQ041WDdSWERkWFF0SFB4cDh0UmhK?=
 =?utf-8?B?MVViOHRGeTRuNXpEZnNmdzlWWmZIVjVWNloxTkd5Ty9MZTdINVorc0lhSkpQ?=
 =?utf-8?B?T3k2a05JQ2t1NGt1RFV3NVVPcU8zSEpWUHNsK2tGVXBvVkFRdVJYcThkODBW?=
 =?utf-8?B?NjM0M0psQmZrN2g4bktvTFluTHo5bVFISE5DQUdWT1A1VURqaXVkbDR1a2pk?=
 =?utf-8?B?RnNZeVdhZTcya3l6VjV4QmN2cEEwaUhiUndSbmVqVW5SZzNEeCtHY1J5OGZZ?=
 =?utf-8?B?aGRKMW5UeFYxL0UyZ08vcDI5NE5JUVBTMXBIWnlQd0Nud0xlM2IzcjJlWFZ4?=
 =?utf-8?B?YnhuR0Ztcml5dEFBUENnNW1uWHkrajFIN25kR2FYMzJZQWViOXg3Vk4xL0Yv?=
 =?utf-8?B?M09hRlhoVDA0TWRTWEFlZ0VQVGZ1MXE4Ri84ekJpbXZVYkFUOE91Q2VwTEFw?=
 =?utf-8?B?ZG1ibTFRVW00S3loR0ZoZ1Zwd3pkSy9TNzR5d3AyMlJpckl0TGg3bGtReHJi?=
 =?utf-8?B?aDVtL00wWkhhYWM5ZmFGckVsRDJKM3pHcFdGc1NnTUJRUytYZUErcEM1a21B?=
 =?utf-8?B?bVZnSWE0cUdnMEpZdDE2M01UckhsQlBWQWZkZ0lIM3UrS052MjVyQlVTN0Rs?=
 =?utf-8?B?dXZKQzg1VmRKNldwd2JUYzhHM3V4KytUdDRHMnAvNjE3cjZjZU82cGVnMDly?=
 =?utf-8?B?NVErdnN1bWpWQWk0T2wySnAzelJ4d2dHa2NuY1Q4aFU5cGp6S2Q2QkVDcEgw?=
 =?utf-8?B?UWJDWEZ2aVIvWUNNT3A2bHVWN3I1eXdZQy9hYXN4VGl2M3RKczN6SFVkbmRj?=
 =?utf-8?B?by9FZk52QjBoaHQyNUlqbUtaa1hQeExsOHpIQVBnOFdCT0RrN1pFZW81Ti9r?=
 =?utf-8?B?bkpiL3U4NGlQRkJhakVZMDIzV2pTVDlGcHI5N2xsZWpGdDRrRS90ZjFOL3RL?=
 =?utf-8?B?SXdTSzJSeDRMUUh0UkNDNFQ2d2tmZ0Qvb2owQndhaS9CejBKSzc0MjlCOHFD?=
 =?utf-8?B?T1J5aUdaSXQyL2Zmd2loNzBHWnJHMkFtSGNQbEk2emluYXFxMVZhUExMVFB1?=
 =?utf-8?B?cWlDQS82VmszbkZiYTVDQU5LejkrTEx4Ui9oTkFiajZoRFJrTlNjSFZKaEZu?=
 =?utf-8?B?c1NScWNucW9jVkE5S3ZwTmRJOGlFQjZyamk4QlNGaXMveE9TQlB0VEljbzVB?=
 =?utf-8?B?RnJRdkZvRUM3TkRiQ2xPL3hOTno4M2pBc05LTlhXS1lEZ2FjclNGalVxempJ?=
 =?utf-8?Q?HU9toajG+h4oLyzhalJZ+fZuGKOtvb7i+bdhM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5664.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QmxXZHBKMktYVmo3bkdVVkpxSHgvWCtwQzV4T3J6N2lOSlJOUUxYZUpNQjk2?=
 =?utf-8?B?NHpwQkR0aGZJZTZEU1ZTMm8wUG9TazFpZlZmaDBSNlYxTXhsSUVVT0dNbno3?=
 =?utf-8?B?OXBVNDgzUVhNcTNWd1FJRW44S3RXNHMyRFRzTWRMTExyTHZLZUpUQVFtZUFj?=
 =?utf-8?B?eENOVHBpS1BwUWVpQzdkcU5NU2hYSmVFRFQxdkRRKzFHbGx3cmZ3Zno3L2RN?=
 =?utf-8?B?ZFhQQ29kbFpuQnY4UXlhTGtaejJ3M0dNUzYxMENEZGVRTmNMdWd1NGhsOWkw?=
 =?utf-8?B?N3dhdG5lZFYrYWJPQlFGT0xJVko0bm9TMjg2bExheFg3VDZaYUNod2tQYXBM?=
 =?utf-8?B?RFQ5eTEydW1pWUZnMDZ4OHFzR2t4Z3YzSkkyYXRYRmEwUnZPNlZUaXN4dS95?=
 =?utf-8?B?aWhHRlUyamV6TWx4Wk8yZGcxVk1YNGI2ZElPWjRqQWhOYkRKUFNkeEFjWXpR?=
 =?utf-8?B?dTB6U0xLOU51UlZSUTFyaHNjNnNuUTRIb1lSSHh0ZGdxdkNWaHRlMGpQenk3?=
 =?utf-8?B?dDhKYUthaVpDc3Fwb09mUjFmbEhrTXhMcGowSmxnV3l2VDNzcjl1dW8rSTRm?=
 =?utf-8?B?TDRuMmlUWGJ4Ukw4N3VLOC90Rk5CS2djNFY2d1FTc3JMZXN2ZXR6Mk9hZXJJ?=
 =?utf-8?B?c28zWnJPSnFaUVhpMzU5ckpSYSt5T3JTdjRkWG9yVUFmbXVXVGROM1N4dkZO?=
 =?utf-8?B?OWhTMU1ra0wwVGxtZ2x3OWY1Y3AvVlBQeE9VTklPZG5hZHQ5aGV0WUFSZk1q?=
 =?utf-8?B?dmRhWTNWRWxiOFpkL2swMUx3U0ZHU2VRdklUUTZyZ0pXa01va1Rac3ZmRVE2?=
 =?utf-8?B?NU9mSWcyYTNzTHdHUXkyejM4dVFDK0M2ajlaNXplUkROelNlbDM2ZmFSN2Jn?=
 =?utf-8?B?bGtNYmIrUHNQUW5OSVllMmQ0RG1WcE56cUdlU0t4NkdtZHd5K3VzWW1iMlds?=
 =?utf-8?B?RnhnS1Joby9WbDNSSzBoMDU1cUtMME1MRHZPQVVZbEs1TVc3cG1nS0FCN3VD?=
 =?utf-8?B?YTJrb2xQeTJKU0R3NFNMbm1mRmhUQXFNaUIxeEtrQWtTejJFeHUyL3NiSjgw?=
 =?utf-8?B?Y3VuR3luM3ExR2lIMGRGdDZwdzM5dU8rR2lneVo3L0g2TUhqN3lFMm15Rlh5?=
 =?utf-8?B?d05DdG1iVzV5dm8wT29YVVlrWnZUSFEyQkpoNmVNYjRXZTNYak1UTTIxbFND?=
 =?utf-8?B?Z0tSNU1FazQ2Y2J0RWdVRW0wV29ZLzVuNExLUm9vWWNkQ2wzNkFiVkh1Mmta?=
 =?utf-8?B?M1JBUmFqZnRZRnRZeGZnVWNVMjQvbE0zU2U0anRrK3hIVlZMS1BnaUVGMmVi?=
 =?utf-8?B?N05UNWREQlY1WGd5UUM0dzBWYUdKZFIwU01uZC9TMUZFRSt6OFUrelVDaS8r?=
 =?utf-8?B?cmdpNFlTeGl4NGNUdVJqcUY1KzE0dGJrZzNaa1RzMXRHVmZlRExSc0h6dmZF?=
 =?utf-8?B?NzJueDJIQnFFVFJreWxzR1BvcE1CbDc0VHF5MHJySmk0Q2NxNE56emxoeG1T?=
 =?utf-8?B?SHl6K3lKUnl1WkJVaXdTSFUzbXVubFpObE5KalFaalFYYnRDTHhPbXNFRzJT?=
 =?utf-8?B?NUl6SDR4SktZQnQ3R1d6SG55SGhzeXkzS1ZvSzB1eTJhbGVwQlI4STNEOXJU?=
 =?utf-8?B?R2xPNHJOS1pIZ0V3Y0owenlRY3RYUktVLzU1QU1HMytLb1lXWTg0NDJmTFdL?=
 =?utf-8?B?TVI0bGdick5qQjdraTdZSU9BQjNBb3k4QWZrcjZNdTBUSDJ3NjZkQWR2MWtW?=
 =?utf-8?B?aC8zcXpUbGdNL2pPMFE5OEtPOVlKanU5TVpXcko1dVBzRmZHNW9iWjF6bFRP?=
 =?utf-8?B?djlGcjJBUm84QjZkVmRxK1p5U3JITEtxM2h1bjVhNUxtTU5qNEJDUWpUQTJI?=
 =?utf-8?B?VU9jeUJROFRNa09VRXFZWTlOaG9OVEZacGZsTEVtSWxibmtNNCtJL20xN0dX?=
 =?utf-8?B?ZjgvRHJDSnVWdFRIalk3cEM1ekRWMHhJL0U0TUI3R0VFWDJDQkhMM3ROZkVQ?=
 =?utf-8?B?dG05UjNtaEp1ZWRDc2xYZHNENmVzZlJnNDUxc3FtYzkzSGhMSEV4b2F2dDZS?=
 =?utf-8?B?MERjZkliTW44aktVbmhBOC9wL2RteHJXMTZWeW5ibFRvTUZQRXdyYnBOZDdv?=
 =?utf-8?Q?E/06lxmlFi/TosnYR+HMrkiV6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5664.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89d63a47-cfe5-41d1-af87-08dcb2047f15
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2024 08:32:36.1282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l3ADNaGPfzUlqaIPaUI75CZtTlHymSgLzBZ96hnzKklt+NWTOpLzXlAPTf+n46xIlKB/MnIO00WbDXGL0Y9KJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5917
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

VGhlc2UgaXMgYWxzbyB0aGlzIG1hZGUgYnkgTHVjYSBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzExODEzIA0KDQpATmlrdWxhLCBKYW5pICwg
b2sgdG8gbWVyZ2UuIEFscmVhZHkgdGVzdGVkIGF0IHRyeWJvdCBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzEzNjc3Ni8gDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj4gRnJvbTogQ29lbGhvLCBMdWNpYW5vIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+
DQo+IFNlbnQ6IFRodXJzZGF5LCAxIEF1Z3VzdCAyMDI0IDExLjIzDQo+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5l
bkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtjb3JlLWZvci1DSSBQQVRDSF0gc2NzaTogc2Q6IE1v
dmUgc2RfcmVhZF9jcHIoKSBvdXQgb2YgdGhlIHEtDQo+ID5saW1pdHNfbG9jayByZWdpb24NCj4g
DQo+IEZyb206IFNoaW4naWNoaXJvIEthd2FzYWtpIDxzaGluaWNoaXJvLmthd2FzYWtpQHdkYy5j
b20+DQo+IA0KPiBDb21taXQgODA0ZTQ5OGUwNDk2ICgic2Q6IGNvbnZlcnQgdG8gdGhlIGF0b21p
YyBxdWV1ZSBsaW1pdHMgQVBJIikNCj4gaW50cm9kdWNlZCBwYWlycyBvZiBmdW5jdGlvbiBjYWxs
cyB0byBxdWV1ZV9saW1pdHNfc3RhcnRfdXBkYXRlKCkgYW5kDQo+IHF1ZXVlX2xpbWl0c19jb21t
aXRfdXBkYXRlKCkuIFRoZXNlIHR3byBmdW5jdGlvbnMgbG9jayBhbmQgdW5sb2NrDQo+IHEtPmxp
bWl0c19sb2NrLiBJbiBzZF9yZXZhbGlkYXRlX2Rpc2soKSwgc2RfcmVhZF9jcHIoKSBpcyBjYWxs
ZWQgYWZ0ZXINCj4gcXVldWVfbGltaXRzX3N0YXJ0X3VwZGF0ZSgpIGNhbGwgYW5kIGJlZm9yZQ0K
PiBxdWV1ZV9saW1pdHNfY29tbWl0X3VwZGF0ZSgpIGNhbGwuIHNkX3JlYWRfY3ByKCkgbG9ja3Mg
cS0+c3lzZnNfZGlyX2xvY2sNCj4gYW5kICZxLT5zeXNmc19sb2NrLiBUaGVuIG5ldyBsb2NrIGRl
cGVuZGVuY2llcyB3ZXJlIGNyZWF0ZWQgYmV0d2Vlbg0KPiBxLT5saW1pdHNfbG9jaywgcS0+c3lz
ZnNfZGlyX2xvY2sgYW5kIHEtPnN5c2ZzX2xvY2ssIGFzIGZvbGxvd3M6DQo+IA0KPiBzZF9yZXZh
bGlkYXRlX2Rpc2sNCj4gICBxdWV1ZV9saW1pdHNfc3RhcnRfdXBkYXRlDQo+ICAgICBtdXRleF9s
b2NrKCZxLT5saW1pdHNfbG9jaykNCj4gICBzZF9yZWFkX2Nwcg0KPiAgICAgZGlza19zZXRfaW5k
ZXBlbmRlbnRfYWNjZXNzX3Jhbmdlcw0KPiAgICAgICBtdXRleF9sb2NrKCZxLT5zeXNmc19kaXJf
bG9jaykNCj4gICAgICAgbXV0ZXhfbG9jaygmcS0+c3lzZnNfbG9jaykNCj4gICAgICAgbXV0ZXhf
dW5sb2NrKCZxLT5zeXNmc19sb2NrKQ0KPiAgICAgICBtdXRleF91bmxvY2soJnEtPnN5c2ZzX2Rp
cl9sb2NrKQ0KPiAgIHF1ZXVlX2xpbWl0c19jb21taXRfdXBkYXRlDQo+ICAgICBtdXRleF91bmxv
Y2soJnEtPmxpbWl0c19sb2NrKQ0KPiANCj4gSG93ZXZlciwgdGhlIHRocmVlIGxvY2tzIGFscmVh
ZHkgaGFkIHJldmVyc2VkIGRlcGVuZGVuY2llcyBpbiBvdGhlciBwbGFjZXMuDQo+IFRoZW4gdGhl
IG5ldyBkZXBlbmRlbmNpZXMgdHJpZ2dlcmVkIHRoZSBsb2NrZGVwIFdBUk4gInBvc3NpYmxlIGNp
cmN1bGFyDQo+IGxvY2tpbmcgZGVwZW5kZW5jeSBkZXRlY3RlZCIgWzFdLiBUaGlzIFdBUk4gd2Fz
IG9ic2VydmVkIGJ5IHJ1bm5pbmcgdGhlDQo+IGJsa3Rlc3RzIHRlc3QgY2FzZSBzcnAvMDAyLg0K
PiANCj4gVG8gYXZvaWQgdGhlIFdBUk4sIG1vdmUgdGhlIHNkX3JlYWRfY3ByKCkgY2FsbCBpbiBz
ZF9yZXZhbGlkYXRlX2Rpc2soKSBhZnRlcg0KPiB0aGUgcXVldWVfbGltaXRzX2NvbW1pdF91cGRh
dGUoKSBjYWxsLiBJbiBvdGhlciB3b3JkcywgbW92ZSB0aGUNCj4gc2RfcmVhZF9jcHIoKSBjYWxs
IG91dCBvZiB0aGUgcS0+bGltaXRzX2xvY2sgcmVnaW9uLg0KPiANCj4gWzFdIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xpbnV4LQ0KPiBzY3NpL3ZsbXY1M25pM2x0d3hwbGlnNXFudzR4c2wyaDZj
Y3hpamZicXpla3g3NnZ4b2ltNWE1QGRla3Y3cTNlczN0eC8NCj4gDQo+IEZpeGVzOiA4MDRlNDk4
ZTA0OTYgKCJzZDogY29udmVydCB0byB0aGUgYXRvbWljIHF1ZXVlIGxpbWl0cyBBUEkiKQ0KPiBT
aWduZWQtb2ZmLWJ5OiBTaGluJ2ljaGlybyBLYXdhc2FraSA8c2hpbmljaGlyby5rYXdhc2FraUB3
ZGMuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhIENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvc2NzaS9zZC5jIHwgOSArKysrKysrKy0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3Njc2kvc2QuYyBiL2RyaXZlcnMvc2NzaS9zZC5jIGluZGV4DQo+IGFk
ZWFhOGFiOTk1MS4uMDhjYmUzODE1MDA2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL3Njc2kvc2Qu
Yw0KPiArKysgYi9kcml2ZXJzL3Njc2kvc2QuYw0KPiBAQCAtMzc1Myw3ICszNzUzLDYgQEAgc3Rh
dGljIGludCBzZF9yZXZhbGlkYXRlX2Rpc2soc3RydWN0IGdlbmRpc2sgKmRpc2spDQo+ICAJCQlz
ZF9yZWFkX2Jsb2NrX2xpbWl0c19leHQoc2RrcCk7DQo+ICAJCQlzZF9yZWFkX2Jsb2NrX2NoYXJh
Y3RlcmlzdGljcyhzZGtwLCAmbGltKTsNCj4gIAkJCXNkX3piY19yZWFkX3pvbmVzKHNka3AsICZs
aW0sIGJ1ZmZlcik7DQo+IC0JCQlzZF9yZWFkX2NwcihzZGtwKTsNCj4gIAkJfQ0KPiANCj4gIAkJ
c2RfcHJpbnRfY2FwYWNpdHkoc2RrcCwgb2xkX2NhcGFjaXR5KTsgQEAgLTM4MDgsNiArMzgwNywx
NA0KPiBAQCBzdGF0aWMgaW50IHNkX3JldmFsaWRhdGVfZGlzayhzdHJ1Y3QgZ2VuZGlzayAqZGlz
aykNCj4gIAlpZiAoZXJyKQ0KPiAgCQlyZXR1cm4gZXJyOw0KPiANCj4gKwkvKg0KPiArCSAqIFF1
ZXJ5IGNvbmN1cnJlbnQgcG9zaXRpb25pbmcgcmFuZ2VzIGFmdGVyDQo+ICsJICogcXVldWVfbGlt
aXRzX2NvbW1pdF91cGRhdGUoKSB1bmxvY2tlZCBxLT5saW1pdHNfbG9jayB0byBhdm9pZA0KPiAr
CSAqIGRlYWRsb2NrIHdpdGggcS0+c3lzZnNfZGlyX2xvY2sgYW5kIHEtPnN5c2ZzX2xvY2suDQo+
ICsJICovDQo+ICsJaWYgKHNka3AtPm1lZGlhX3ByZXNlbnQgJiYgc2NzaV9kZXZpY2Vfc3VwcG9y
dHNfdnBkKHNkcCkpDQo+ICsJCXNkX3JlYWRfY3ByKHNka3ApOw0KPiArDQo+ICAJLyoNCj4gIAkg
KiBGb3IgYSB6b25lZCBkcml2ZSwgcmV2YWxpZGF0aW5nIHRoZSB6b25lcyBjYW4gYmUgZG9uZSBv
bmx5IG9uY2UNCj4gIAkgKiB0aGUgZ2VuZGlzayBjYXBhY2l0eSBpcyBzZXQuIFNvIGlmIHRoaXMg
ZmFpbHMsIHNldCBiYWNrIHRoZSBnZW5kaXNrDQo+IC0tDQo+IDIuMzkuMg0KDQo=
