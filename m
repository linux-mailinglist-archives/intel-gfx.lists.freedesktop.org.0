Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DbxJHT1C2r0SAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:30:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD7F577732
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 873F110EA4B;
	Tue, 19 May 2026 05:30:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XC6Mc4pN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BF0810EA4B;
 Tue, 19 May 2026 05:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779168625; x=1810704625;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X1+N13Tk0aK5e5ajlz9dgQQu70ps+GCZuzZ/eMzpNeM=;
 b=XC6Mc4pNRYLByBgERWyojvYpNbsqSS8yl2rmuOhRgEv31o+0+0sShk3i
 IUZnlcuKGhEeZ4vWkYwd5UJ7zxuuUgOGaWdllrW5XLvx3wMeS1+qEr3Ha
 CfaHo+R1vw3A6tKcOvTbTsi1v5uYUIKe2Zt2/Dr/a2OS3IiMlaexO2eNb
 0os+ZQZ0WurwTgmHPjEDHpnM6V2x+kbr2yLRahV/+noyS+DE+XV5MWQUo
 atLlGvjoNLIMSYIIH99ov7jd0Q0bpll2VrcpxaWWkXRR09ySr7+YZx9is
 yRIdxGvSrGbShwd6Vbi6sTa4hpW2UdVRqtKgEasJsB9WDHHGB9gMGhXCq A==;
X-CSE-ConnectionGUID: g4Jju0/ETKGEtTrxb+NgPw==
X-CSE-MsgGUID: +yXBzzpUTNCzpQibskyTCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="80207837"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80207837"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:30:25 -0700
X-CSE-ConnectionGUID: y6wPSPuuQjSk3Q0pPdqEsw==
X-CSE-MsgGUID: 57zYOaCCRYeEX7W1kcmBkQ==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:30:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:30:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 22:30:23 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.12)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:30:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cEKuoEX0YeP0sMwV6uGRm05QxSYux8PESKHwQkkidHFFqo9qB5LrSPQUCE9rSEn1U93IK43dvLFVDZn4MvM7vzNnMSvDn8VxsuiqMtH8HqWt1Uk698xnoBMtO3TqIXSKXoye/FJvivLNmbMiswf5Trgx6yS2u10v0p+Css/jYj7iNVW5o5RQveoIml62gJhbqkTuutN7yQDz9Y/BA7M2IQrQ8SoiF4E+L2kgiRdjr9uaE3dg+W17q4dv8mnlg4d8NKcMel1U+vQl5XBz5dPhOv2sQW5+79i40XE7KxxRN3iyys890DBVdLoCwcS100a0qy+1hJ0gniW4oqrkh7JrPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X1+N13Tk0aK5e5ajlz9dgQQu70ps+GCZuzZ/eMzpNeM=;
 b=Blm43zqazjHi8rhU74RjJKjCz5aKuo5JUSfV1uYULvB20ob0xwBlcgpAnIq8tzMA+Sle0etGcuPnG6Cyurg26QZz2koiwe2FqYGGEFzbqSQywiMy2eU2V/5rHS7/Fn3O9smSvA9EgKY79auMo9OhtwpCXEe1WP1UqAEmBSkJoSYbxff06yk3TOgrLYSwCaAHdPt3sUQYHz/CJxvzc5Ln4Lp4DlWmYLfIkcz+MlApUKvgihnXlvNEu0/9sTbYpbvbtZyQj44oYLkEELnib5KKuj/JNNefPymmmTCDhg3G6tw/mHx5T4bk447JfXsOfhLFco3QDI6OrvnIVujtzYmPnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS0PR11MB8164.namprd11.prod.outlook.com
 (2603:10b6:8:167::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.22; Tue, 19 May
 2026 05:30:15 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 05:30:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 09/31] drm/i915/bios: check VS/PE-O in helper func
Thread-Topic: [PATCH v3 09/31] drm/i915/bios: check VS/PE-O in helper func
Thread-Index: AQHc3cFS7eTIziS7z0KDxtQGzx5RxLYU5Ytw
Date: Tue, 19 May 2026 05:30:13 +0000
Message-ID: <DM3PPF208195D8D5DAA7A79113241DD4F07E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-10-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-10-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS0PR11MB8164:EE_
x-ms-office365-filtering-correlation-id: 905539ef-16d3-4201-b2f3-08deb567b3d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799003|4143699003|3023799003|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: mXnst/FI7Uew9i6DANRqJzb3UAlDvrVS2L2ck42m/VjkNP7gtngrQRhpGSGtXdMUW46KWcP34273XfXgFnqZMoeE/sJIuxpYY62tp8BXTk2eSmrWNXk5Jjc5Wn8nFXC4LCUir9PAYhu+U8+FGBbIEoYsmN0lz38sjITMVapMNQmXNmKStjyx9wsBwNXl1SKp9uphkrDKrgFiYE12/HsXvf3vvrVi4IQ0T3FLLnjvF+vfSDThN4+5EiiYitu1VJQ/3rgDkagYETq+d18usoOgk9lRH2GFnKQv1wdqxT+23xuWm9v7rUwPK6SeYH1C0wD3rBJ6DgKZMJ4O4ZHg5LIRUla1CScVqBs2wTwHRzqy6ZaapGS3ri6Kva1md5OOurIIVmg3gTVA8ZJB0QUU3q53GNnhPk54wmVqQmyxBi7n+wcRZ55AsOlHFN2Oe+r+PWMN0BedUk3B9YrTMjw/xnAmFBN9YGIMJffUWk6Vxq39J92ySvl4T0Epna9CDrq87efrf1Q+vyr5LiX0eB6rc8QhWeUMztJjOOlysoS0B5hy/KsHwcbrikVG7C6qzmMq73GUp6KC7Bw3oVDZpPiRA+10VkYIhxe+GXVPu6rayjCZ/awvDNHrc/56hKS/UURoc5IktWVl9WkEBwK7U2Cc2VEd+glq1RVCMxRKW4wf+3sDv6HJJhksDlaxII3fLXU+lTQntvEf4xJlbkYW3Z7ALaMP7PJEmXgon5TKqEeiI7XSIjtyD5hd41Cexw/gh4RoqIBc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799003)(4143699003)(3023799003)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHVFa1ZyOVFsbkxsK2pJWm1oR01sTW1EUUdkTjZVdG9TZFpvL1ZLTktLdENw?=
 =?utf-8?B?U0IyV1RqVks3aDFkZXpSblJ3NEUwQ2hqYmFRczJ6MkI3NHBjK2NQK3RVTXB2?=
 =?utf-8?B?QUNGZjBPVVBCdWxpS2lBK0N6OTlMTTRUSjltejFkekZoamhCTy90dE9LY0N2?=
 =?utf-8?B?bHFPZTZiMHMrUjVHRTFpaGRPOFFQNUZxeXRLd25mc0FBRzhoQ1lCbGNDUjRU?=
 =?utf-8?B?M1RzY1YxVGRKay9CZWRtdWpCV2JudWtvOVJUYmU3OERHM01JcXpUQ1hjeFVJ?=
 =?utf-8?B?U24ySklvT2FuOC9OdllJS0UrM2VlSjhvL3NpNFpvL3poK2JmQldtVzJBSWhC?=
 =?utf-8?B?eGdRaDcrdE5PL0RKMm9rWmFjOStQMGtZY0RvbXRhYU15QVhoUjV5UGl6R1pw?=
 =?utf-8?B?SEZzQUVUWWpPTlFxYzRTa0pCcU5wL1VxVDFzVzVOeFpGWHdEanh3L09Mcm5L?=
 =?utf-8?B?dEd5dndwSkZWcmlZb2tqTGFaS2NDUFpCSENZcnFrOEZwZ3pLUmlvU2Y3VkRO?=
 =?utf-8?B?MDVuZll2QUo3NThtd1QwSC9WbTFMWVJYU1QrQVkwRFJsOXpVUkJvWkRiNnZH?=
 =?utf-8?B?dktlK2s0a3dlVXlrT1pHbDNhQVVSQ3o1Z2F3VEZvNFhXUjJUSFE0TjFyWXRX?=
 =?utf-8?B?T3dOSkxQYXBLRmdnV2hWL1JpdDN5L25Hc0ErQTczUisvMWxLZzVsT2hkVm1t?=
 =?utf-8?B?Wi9pMHRJaVVPUVE5M0RnZWFYcXhOK0tzdWw0NUlqcG5BZ2lEdzFINHUwWlZB?=
 =?utf-8?B?KzhFcUlzTU8zVER1TmMwZnkwTUdSclk4bnk2c1ZMblBvYzRoK2pLUksrNDcv?=
 =?utf-8?B?NGNOdGUyVWExVy9iTHcxQlRjNEFXM3QvSWVMd3d2NVV3SGxHbzJ2NnZMeDYx?=
 =?utf-8?B?ZWM4RWo1WVdzWXVsc3RmY2YyQnNjZ3lHWi9nSGt6dmdNMGxZTFgvejhBekFT?=
 =?utf-8?B?MnlpTFB6QzUrb3Y1bXpVekdCajdPdWxXdDNncURndW5veXI2VmxvS2pmejhR?=
 =?utf-8?B?dFFweEpodmFXZWpVQ0NFU0NTdkMzaFl3dEpwNS95MUtJMmpIbGJGdFZLUWds?=
 =?utf-8?B?WGtaVjdZdzdkbWdieFBLd2d1Wnh5b2RsdFAzR1ZGbkFvTDQwM1JZMi9rellL?=
 =?utf-8?B?bWZGQ0FFVkZWVk5MbTFsT1pmTGc5ZUZoL3lFSzE4QWtaUDByZG1OdUs1YkxO?=
 =?utf-8?B?WHRUcnNRS0VqY1BwMjh5ZUVJd1BJcEs4NWV3bXh6NjhyNHlCbEJUSE9uYU1E?=
 =?utf-8?B?SThXTjliMjU0SGRJdzJOOUp2enJVQ3JRYVRyUjNMRExBNEZic1N3N0U3bkx0?=
 =?utf-8?B?c2N4NjdEbFNGOUJBMjZXanBSclorZXhFcURLWmk5cVBIbldsL1FWWWdYME5m?=
 =?utf-8?B?S1A1S3hqNUZKTG01ZmhqTHFxajV6aDdmQkx3Wk5yN2N5Z3NTL09yL0ppa2dR?=
 =?utf-8?B?Y3RDanBXem1MSFk2T29RbUhaK3lGTjQ0VkhJc1hEb1orMHQ3T2d2ZlNydTdB?=
 =?utf-8?B?cXJyd2dFQml4K2RONEJHKzhqQzBTdTJqUmhIalkzT01wZmJqV29VZ2hnVVhX?=
 =?utf-8?B?T1cxdzZ1N0FiUjcvd1NwR3hqcWtlQ2FCMmpIQUFQaGYrVHlzdURGTU4xcmYw?=
 =?utf-8?B?Q2tZYW1kVHNSaW9uWkdFY2phSlBDUWExNWYvaWZnTm9XTVFtQ0s3b1d6QTAw?=
 =?utf-8?B?eXdqWkxGMGdyMzN0d3NRK1g1YU9LdXA0Q3gwaGNLd3BvQldwZTJVU05xcEhQ?=
 =?utf-8?B?clhqNnZDMTkrSVhWUHNhb2twa0EvSnZWTjByVFE2aUd4M1N3d05nZkRTRjlW?=
 =?utf-8?B?ZStMTHJPNU9uMEovUWZRdnV0K2NQRExEOXhNeDFhRWNyUUpqMWUvR3dEdXVZ?=
 =?utf-8?B?MFBRTEVCZnpsVDNyRyt4K2RuV2pxV0lhU0kwT2loeEJHWG41V2crTmJXV29C?=
 =?utf-8?B?MTJEeXU1NVB0L3VBNEF3MEpyK2pwRFV3T1hkNkFQYkxPK0wrWHVHdjFKTjE1?=
 =?utf-8?B?ZjZQMi9TbFZPWTFyK1ZCbFFMb2x1eU5scTBLaEdncVdlUWZXaVJFcW1Dc0NG?=
 =?utf-8?B?bUV6L1RhcE9Xdlg5VXU4YW5xVitHUDg0dDFhcEVLMmVabjdYbWNiSGFpbHVW?=
 =?utf-8?B?ZU1TRnAxVk5RcDdxb1Fva3FEbTlFNzJmcmk5Z1ljSnJNRVNQb21aU1ZQNEVC?=
 =?utf-8?B?anZHbEFQZFJPaGwrUmdnaUtyRTFVRzlKUG93a0pTWmxvaFRYM01OaUZBOGN1?=
 =?utf-8?B?VXR4VlFDWVlzMmhJVERpN2gwcHg0MXBaYlJ4RndZeDR3NXVYU1dXN09wZ2Vu?=
 =?utf-8?B?TUkralRaczhkQ2toTmpFSFdmbDRVSWVCR2tDQnFhNXZDQ3ljaVF3dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vHwpYafFQHiPioaucF+1CQk1ovUolhR4quk+1QDScvsN5n/8NdToKkjs9cJfKTt81QuwiZIkX1XQQfdkzMsr7famYA8OlxSJSsPj8f6JOJD0ak0/f12mEeBYYpqB1O/kJ5j2bOhNb8cEyw8vPeueE/1MyQXCwBUA+QeRlWW8v58e+HW+PTiKLtlK4Ca4BoEGX+wZUJAdfZ1H0IE3JR0Pg6xOyw3lP+Anl64o7LvX9Yq8Yq3eEzQ+iCVfMSNAunXgkzLHGPr43IMmBADwjPpj3SF9Pu34/hesFsXROx/z+V5BFLr+1pYAxWHWGUnIua2RlZ6F1WCsct94YeYvGtGhCQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 905539ef-16d3-4201-b2f3-08deb567b3d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 05:30:13.5722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FV7uYK3yVOMnB+4XBNyIh5/1LPnkGQm/WpWLDlnEPHnE7nu0lmCg07PDxlsT03+s7ryVcW/tN79E2hn+4VPPpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8164
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0FD7F577732
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDkvMzFdIGRybS9pOTE1L2Jpb3M6IGNoZWNrIFZTL1BFLU8g
aW4gaGVscGVyIGZ1bmMNCj4gDQo+IEFkZCBoZWxwZXIgaW50ZWxfYmlvc19lbmNvZGVyX292ZXJy
aWRlc192c3dpbmcoKSB0byBjaGVjayBpZiBwb3J0IHJlcXVlc3RzDQo+IGZvciBvdmVycmlkaW5n
IGRlZmF1bHQgVlMvUEUgdGFibGVzLg0KDQpTcXVhc2ggd2l0aCA3LCA4IHBhdGNoZXMNCg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMg
fCA4ICsrKysrKystDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5o
IHwgMSArDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Ymlvcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4g
aW5kZXggZmE5ZjIxYzVjNjEzNC4uYjAxZTQ4NTI4MzQ1OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gQEAgLTI2NjMsNyArMjY2Myw3IEBAIHN0
YXRpYyB2b2lkIG92ZXJyaWRlX3Zzd2luZ19wcmVlbXBoKHN0cnVjdA0KPiBpbnRlbF9iaW9zX2Vu
Y29kZXJfZGF0YSAqZGV2ZGF0YSkNCj4gDQo+ICAJZGV2ZGF0YS0+YnVmX3RyYW5zID0gTlVMTDsN
Cj4gDQo+IC0JaWYgKGRldmRhdGEtPmRpc3BsYXktPnZidC52ZXJzaW9uIDwgMjE4IHx8ICFkZXZk
YXRhLQ0KPiA+Y2hpbGQudXNlX3ZidF92c3dpbmcpDQo+ICsJaWYgKCFpbnRlbF9iaW9zX2VuY29k
ZXJfb3ZlcnJpZGVzX3Zzd2luZyhkZXZkYXRhKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAlidWZf
dHJhbnMgPSBremFsbG9jX29iaigqYnVmX3RyYW5zKTsNCj4gQEAgLTM4NTUsNiArMzg1NSwxMiBA
QCBib29sIGludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c190YnQoY29uc3QNCj4gc3RydWN0IGlu
dGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYQ0KPiAgCXJldHVybiBkZXZkYXRhLT5kaXNwbGF5
LT52YnQudmVyc2lvbiA+PSAyMDkgJiYgZGV2ZGF0YS0+Y2hpbGQudGJ0OyAgfQ0KPiANCj4gK2Jv
b2wgaW50ZWxfYmlvc19lbmNvZGVyX292ZXJyaWRlc192c3dpbmcoY29uc3Qgc3RydWN0DQo+ICtp
bnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSkgew0KPiArCXJldHVybiBkZXZkYXRhLT5k
aXNwbGF5LT52YnQudmVyc2lvbiA+PSAyMTggJiYNCj4gKwkJZGV2ZGF0YS0+Y2hpbGQudXNlX3Zi
dF92c3dpbmc7DQo+ICt9DQo+ICsNCj4gIGJvb2wgaW50ZWxfYmlvc19lbmNvZGVyX2lzX2RlZGlj
YXRlZF9leHRlcm5hbChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRl
dmRhdGEpICB7DQo+ICAJcmV0dXJuIGRldmRhdGEtPmRpc3BsYXktPnZidC52ZXJzaW9uID49IDI2
NCAmJiBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaA0KPiBp
bmRleCA3NWRmZjI3YjQyMjg5Li41MGM4ZmM5MWZiZTg1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaA0KPiBAQCAtNzMsNiArNzMsNyBAQCBib29sIGlu
dGVsX2Jpb3NfZ2V0X2RzY19wYXJhbXMoc3RydWN0IGludGVsX2VuY29kZXINCj4gKmVuY29kZXIs
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKg0KPiBpbnRlbF9iaW9zX2Vu
Y29kZXJfZGF0YV9sb29rdXAoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gcG9y
dA0KPiBwb3J0KTsNCj4gDQo+ICtib29sIGludGVsX2Jpb3NfZW5jb2Rlcl9vdmVycmlkZXNfdnN3
aW5nKGNvbnN0IHN0cnVjdA0KPiAraW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEpOw0K
PiAgYm9vbCBpbnRlbF9iaW9zX2VuY29kZXJfc3VwcG9ydHNfZHZpKGNvbnN0IHN0cnVjdCBpbnRl
bF9iaW9zX2VuY29kZXJfZGF0YQ0KPiAqZGV2ZGF0YSk7ICBib29sIGludGVsX2Jpb3NfZW5jb2Rl
cl9zdXBwb3J0c19oZG1pKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAq
ZGV2ZGF0YSk7ICBib29sDQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c19kcChjb25zdCBz
dHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGENCj4gKmRldmRhdGEpOw0KPiAtLQ0KPiAyLjQ1
LjINCg0K
