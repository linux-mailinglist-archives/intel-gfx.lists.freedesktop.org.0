Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAkUJHZk72mHAwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 15:28:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9541A473622
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 15:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B93F10E750;
	Mon, 27 Apr 2026 13:28:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SL4yJQ7n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 401AF10E749;
 Mon, 27 Apr 2026 13:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777296497; x=1808832497;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=70THgQupGeNjz3+AsVG4EuPe71wZUmspdq06Vcxrwgk=;
 b=SL4yJQ7n/xawpwk/F0i1H8hwdY9ELU/Xsx6BdYDgu7ACYT+MLj2vww5r
 7rJn+y8nHDccg+8OtFhSDXnQwCSLSHCiTsUeDBgdsx9qugMSaThgCeeK/
 B+mpuHSEIwYYxQiYqwLQ00pOG49U316tYkmntHBQchqpVRaNFNX3SoEx8
 GvLB8As0zrMbmdYf68svRX+Pv+Yn0gB59qJ5KdJ/HpcQTQ+hptnB6ZXsl
 xcvB9g9i2Sdjjz4CLclp1Wh0O4F8RmMgL9LUuuQGyli4yQXsbat4wv6sF
 6cIQzeXFi8T6kCbMExBFah3ob1WhTGWqNKBEydA/9WVPZoklJBggtnmNs w==;
X-CSE-ConnectionGUID: Rzrhy/AhQi+ejTu9wX0Fbg==
X-CSE-MsgGUID: J3odPc0ESlOd5kJMjvOB8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="77342276"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="77342276"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 06:23:26 -0700
X-CSE-ConnectionGUID: BHYxsXVPT4uKm0k0KUM2QQ==
X-CSE-MsgGUID: pUB8KiN6QYK3V/wN8f82WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="233912381"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 06:23:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 06:20:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 06:20:39 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.64) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 06:19:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hs155sMIDLqghxX/N5MaRJ0f5IywU6sA0em7vjvJuJA+ECftKlyu1sebiWrBhVGVcPWA1PFiIo74T/SbWGpMGTkgkfXu1oroqLx8NCLZO+6HHxtBehskyJXDvZ/+m04ci6Xh/3od2L3ZVbpGVLrWGBcWV9jedbtT4NHiMw4LArx7D0SgsYMjhqKwlzH6pQ9tC3qH2w5vEmM1P/j/9KsJXzWkwar6Qmn3gvF3Gz/Es7gml2hnWbrx/EyrV1GVAx0lzQvVKFSAeAV3xCD5VhxNGGDbaZcx6z/jUr3kWRFBvkfMFjeqWXdFu/14haDMJHJNvhJdEEHKxbUBPBXRoOtEdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=70THgQupGeNjz3+AsVG4EuPe71wZUmspdq06Vcxrwgk=;
 b=md8CGOcmi3B+1Ik2tD8gqKr5MBTk+OrWhBrf912bxmoMqsfi1BKX+okf4Rr4cpUvYf0PxV/hvj2vOaKWGoex2+lrTJrESrK6qM1oBogAYES33Q+H5a8lil6hZcTFmFDpHTRBCB+p5rP9C4ksFAoJEshVchubtDT0S55TxX+/s9ayAJjVSb/rULPpUz5w7XmDBI9MXycbJQI2h/fd7E4hFEMHJKyy3g9BJVTfdzT4TO7ywEprBpFBFUe+8x3SuXeHhD32Z3LasF+W++8Fy0Pb3YDoJuXYt+b0vUSyg6b/Hvvo7sWpHYIBh/TbqcGPUJaGWSqZUTKRrij70s8nWIy2TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ0PR11MB5791.namprd11.prod.outlook.com (2603:10b6:a03:423::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Mon, 27 Apr
 2026 13:19:31 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 13:19:31 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH] drm/i915/bw: reduce the pm demand peak bw based on
 display data-rate
Thread-Topic: [PATCH] drm/i915/bw: reduce the pm demand peak bw based on
 display data-rate
Thread-Index: AQHc1iXdvtDTsJHwjEa5GHZWTDklb7Xy2QwAgAALnIA=
Date: Mon, 27 Apr 2026 13:19:31 +0000
Message-ID: <337ad2d3ce11e4173eed338b9eee923bc0537b9e.camel@intel.com>
References: <20260427091116.218021-1-vinod.govindapillai@intel.com>
 <ae9YpNyZcfE1k2_m@intel.com>
In-Reply-To: <ae9YpNyZcfE1k2_m@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ0PR11MB5791:EE_
x-ms-office365-filtering-correlation-id: 4660f1f9-afbd-4373-bf69-08dea45f9e04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: sAUSMfai8wxVOLuJVHNrlG8LqYH1FkNza3y/v6tHBflA2ZHXM/Mm+vH8kjHPz+YwiGHAfPGLQA1MCbnq/ziejdzqJJ/7naPRNsOIZBG0iC7Eaw+uuSHocx0Fs0Tu5SXIRDgzhEhX1iCLytS5I/FtFN1ao5kU0Nur9bbtCiSGyOxrpczqLBZikZNN7Psp9KQDMA1jqrJbB702TwpwOyos5LyUsYCKvnXOP27l7IYEXUgWoNYr0TERYEBr3Ni4bWIqgXLigA37s0g2jT4N+lwp1cSR9xju3kOCG6pEhAkxjFXQeHt8TZGjJ4XqvZQUPOxKsSv0T97Jq7D/JcDLennQwc2WlDEuSJaRBQiV1MMmSu78xE5tZZyipKD+LFSaaGNnGwGNuYjtnImL6N04wNcNinZRRNysJC1lYRg09tIKezW1CKO6EvHEli1fyCBgEIGIVRbI9Ok8JiqWtbYr9xK9WrVKJk+9j+U3fbKzMYrVGqMYSlfBCjaBmj/+K420hEtkInC/NjjajM9rPciRF/vdd2hDQvN9cs0Qw/4vaNtCp70THlPuMqQ1ydTiV2MxbNMWEX+nP9EM3aYaGRsDm+9EPgjuVigdRIsHe2yCf0MSFnE5KXYbnsdwNHTN6Vob3zxMvYEYdwXlgVUfuTIyZJmgSmcOrBcoqLQ+X8EDykcoVar0Rlkl3xbrlEm1Lu3ICQfz8gFKlUhJI/2BSSTPSA62oNGswuG0S7soUeiZQ4NXnQzekPOQG/jfyUUUdWeC9FSCIjG7jQX/P/uyUEWpB+zgmK3Ja+opooJ5hDyxvr6fR0Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTM5WUFjVUFWMFFmdnQ5ZTdlZDE2VGpQMkNJbzUrcVRaVmZ6UTJ0QkxVcG9L?=
 =?utf-8?B?TVJFdTBjQit0TDloTGU5R0pDekRpOWRPSkRlZFArUnhRYjIrV0hUS21DalFX?=
 =?utf-8?B?TUlZNURKY2FRS2R3WXM2cU5kOXFVU29VUXVTMVA4NGVNdEhSS1VpZm15RUFB?=
 =?utf-8?B?MVFxSGpTZ0dISllBZHFjMGpSMVMxb3FMNVkzVllEUnJJSUNyTEV2UkZ1ZFVT?=
 =?utf-8?B?YkFWZUIyd1R2a2lBQWN3NDBMd0YxcFRTaHkzb0RXTC8xRFF6WTA3cStpS1ow?=
 =?utf-8?B?UXl3VHNpMmtjMVA3a3BiY0NpdjljR0NHM28vRHRpSUxKY21UZTBmMWJWT3ly?=
 =?utf-8?B?Z0V1d1NncXdWTVlFaUpLTTBzTDIvZWt1cVlrSE91MFl6cGV5cE5aREZQTVc3?=
 =?utf-8?B?aDNKVFZWWnlWT2w5SVc2blpiVWdJU1RKbGNVbDJEZVJxQjlXdERqRUROWGk5?=
 =?utf-8?B?Wkx5bzFldVNCM3hVS1A2KzYyK3d2bEFybUUzd1J4SXk0ME5ROXF0MHhMV25I?=
 =?utf-8?B?bnByUGxTdFdTRjc2ZllxOXZ6YW8yNGltSURpb3Ewb0JHRWpOVFBQRjJ3ZjQy?=
 =?utf-8?B?YW1zVEhBZVNmb2tCMEdDeml3MWVhRW9vZlZSN1FKVDJieHc2dDhFa3pwRDRN?=
 =?utf-8?B?Rmd4R29xSGk0b2xQM3RSS2Y1VTRMZVFKUVJ4OXR2MkNOTzNuM1k5L2NqbUdv?=
 =?utf-8?B?cXdGQ2NMZTRjQ3BUeEN4c3JmQ2JGQWt5cUdLZlgrYnNiM2dJcHB3aVVYWXFP?=
 =?utf-8?B?UGgvOFVSMHJ2Qlk0a2Ixd3ZOS3l5bDVSOTdtSEgydUVVZ1pwZ3kwZEZzalpE?=
 =?utf-8?B?bENjYnE5dWFlbUUxdFRnQWpkN3BheGU1M2lsQVhEb01hT3NaanJpd1JBVFBI?=
 =?utf-8?B?OGRTYkkxYkYxRk5ENkN0bFlMWVJKbjZFWmJyL2JpRVJmTHV5cWZ6dWdEbzdW?=
 =?utf-8?B?RUpkaDA5ZWg0cCthZjBxYjVsRmhyUmFwZHkyWDlZb0xiZURGQ1JHZDBMVnh3?=
 =?utf-8?B?Wm5PUlhMSDN1YVpGbk1rVytWQ1lrV3V5aDlYMHBxRlVGaWRmQmI1RmFWOWZp?=
 =?utf-8?B?UnRIQ1VCNGE2ekJUMjFKZlF3NU9yY3JnbUZJWVlsUkRsYzFrVVRZUmc2Q09v?=
 =?utf-8?B?SE1salhBeTFyd0JDSFlTdHNYaFVhODNKSUp3bmdvYU1mZTRob2FoNWlNTERX?=
 =?utf-8?B?VFlsckdiTlNsZ3ZtUHNFSU1Gb25LOWZHckdyZGZGTndMQmg0ZWVrQTcrci8r?=
 =?utf-8?B?STMvRXc3aThxc2FXT1hQc1ZoRXRabFdOcXBNTzZoaHlvVFA0a2k5K1dOVnRT?=
 =?utf-8?B?VlN3UEpIVWF6aGtxQ0lRZisrdEQvMGJIVjdtKzN1SjcwZzFTL3dLSzVDNjJ4?=
 =?utf-8?B?WlRBL3doRElvTGwxWStuL0xxQ1BXTlI1bDBoSVZtdDU0NnBlT1FCNkdnUis1?=
 =?utf-8?B?M1BaVG1aMXQ5S1JQL25WVWpHSk5BTjZiNm44bmovVDJTMHNSTE5XMDFjK3Zt?=
 =?utf-8?B?OGJIdkppa25xQ1lwVUl0Qng3dmROc2tBQ0ZlV0JnS2hWZURLMU5Ec25ML2th?=
 =?utf-8?B?K3pkVzhMVnpIeUJ6MVBGaEVJTzNMSDZudG8xdC91WDEzdGV3YTJ0aFpDTTZX?=
 =?utf-8?B?Wlk2U3lzaTFVRlZBa0RteGtGcUs4OXRpaHUvVVJXQ2REVjRCSzRCQjFnSENz?=
 =?utf-8?B?UnNlUUhxS0tzUE5TNzhEeWw4OVdYYWRCR3ZXMXZpU2ZyWTJ2U01ZZC9ZU3M0?=
 =?utf-8?B?TktDaGxkUjdMTDFhc09RRkk1Q0dVTUJJK0t4M2pmV3Z3c252UGJZM25kL1BM?=
 =?utf-8?B?ZXlnUHpHNzFZZkxsb3JaeXNZV2Q1VXVESDBPLzFheUl4ZEovTmI0VTFjUVRx?=
 =?utf-8?B?ZktKdFBRbWZpNXArekFDc21FaERKM2paNG05RW81bk9TY29mcXQzRzAvNWxn?=
 =?utf-8?B?aDFjczJJRU8vV3B0bWdVR05abDh2VDFhM3NPa0dwemhLOTd2cEZ5M3JFZmpz?=
 =?utf-8?B?T1BvNEFSaXJrZTRzd08rTFBXM0REMUZmUk4xNUdBK21PY1BxTmZFTk1qbng4?=
 =?utf-8?B?d0NKUUxNNmRWRUVZem1zcWhwVW8vc2JyblVTUjk1MlNoOFpESy9XZnBzemx3?=
 =?utf-8?B?S3JHNlJJUVJFeUdUTnIwYUJrMlpEYTJuWXZQRmQxZS9GN0FXYlI1YTE0bU10?=
 =?utf-8?B?VFVMRjFQWUwyaTI5RHVvMVFHdU1XMHM4dzZmVlZqaTdPblU1OEdXdU0rYzhI?=
 =?utf-8?B?cG1LL1A4Uyt2dHBraXlRWklkL1VYUUpRVnBEejVGMTB3UGp1U1ZMY1N3anhz?=
 =?utf-8?B?TitNVDJUR2pmcUpRWEcwdU14L3NWQlJBUk9SVGFoamZKdlBYUFZIUmMycTBm?=
 =?utf-8?Q?LmySYWgw7/T/Y8uXKI46DL++OOwC+6fQFlPBUl5sHw5md?=
x-ms-exchange-antispam-messagedata-1: 6GGsJ2lDMk1hYGCUJYHdPRaS6gSXKH5BfQwXDfpemeBkbq5dlKvV0vka
Content-Type: text/plain; charset="utf-8"
Content-ID: <66C8A4C7197CC147BE31E5FC0D3868A8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GPqHaQfR9GyIitEIwXhDTGVqww3W5qL6I9OXS6u27u6UUpWDgCxoTjmdehdwqksMvgJn3tKRh5c4ofzj94bImlBR/0n05hzCUS9qwH7RIaYVyq1HpUcUf2Wz1+I9O6ZOiy8MqvZKA9whZeF1oEBEsDSBpEETpdrFYwal6O4TzMbnQFXvsVENJ5gWagNsnvJcH54OJW3QvJU4WherqkN4u3ONV5FpaM9xjvQtA9sxrTXTDNWqdZQQnvmwbuon0Y2JyMlCymqx2/Fs24vIeHo+UM5jJ/1k9OPlbEAbtQpUa6rX3tQck5QnivNgZM0t9XnZMAU/07MkOp3OG82mBplsUA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4660f1f9-afbd-4373-bf69-08dea45f9e04
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 13:19:31.3036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HmZRZbui/QY5NhUD4babG+T3fsHfqMGIgODKVxvnCAbBk/mG+6nizcbFkwJJ6b9zpaEmR0SHcQaxAAFXBIWFXQxXS9PYa2nWz3lNPVsvRPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5791
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
X-Rspamd-Queue-Id: 9541A473622
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

T24gTW9uLCAyMDI2LTA0LTI3IGF0IDE1OjM3ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgQXByIDI3LCAyMDI2IGF0IDEyOjExOjE2UE0gKzAzMDAsIFZpbm9kIEdvdmlu
ZGFwaWxsYWkgd3JvdGU6DQo+ID4gSW4geGUzKywgc29jIGNhbiBsb3dlciB0aGUgZmFicmljIGZy
ZXF1ZW5jeSB3aGVuIHRoZSBkaXNwbGF5DQo+ID4gbmVlZHMgbGVzcyBiYW5kd2lkdGggdGhhbiB0
aGUgbWluaW11bSBHViBwb2ludC4gVGhlIHRocmVzaG9sZA0KPiA+IGhhcyBiZWVuIGRlZmluZWQg
YXMgMjBHQi9zLiBTbyBpZiB0aGUgcmVxdWlyZWQgZGlzcGxheSBkYXRhIHJhdGUNCj4gPiBpcyBs
ZXNzIHRoYW4gdGhpcyB0aHJlc2hvbGQgYW5kIHRoZSBzbGVsZWN0ZWQgR1YgcG9pbnQgaXMgMCBh
bmQNCj4gPiB0aGUgR1YgcG9pbnQgcGVhayBidyBpcyBncmVhdGVyIHRoYW4gMjBHQi9zLCB3ZSBj
b3VsZCBzZXQgdGhlDQo+ID4gcGVhayBidyBmb3IgdGhlIHBtIGRlbWFuZCB0byB0aGlzIHRocmVz
aG9sZC4gVGhlIGN1cnJlbnRjIHBjb2RlDQo+ID4gY2FuIGhhbmRsZSB0aGlzIGFuZCBhZGp1c3Qg
dGhlIGZhYnJpYyBmcmVxdWVuY3kgYWNjb3JkaW5nbHkuDQo+ID4gDQo+ID4gQnNwZWM6IDY4ODgw
DQo+ID4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2J3LmMgfCAxNiArKysrKysrKysrKysrKysrDQo+ID4gwqAxIGZpbGUgY2hhbmdl
ZCwgMTYgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYncuYw0KPiA+IGluZGV4IDljM2E5YmJiNDlmNi4uMDA1NzYxYmFjYTkzIDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+IEBA
IC01Miw2ICs1Miw4IEBAIHN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgew0KPiA+IMKgDQo+ID4gwqAj
ZGVmaW5lIERFUFJPR0JXUENMSU1JVAkJNjANCj4gPiDCoA0KPiA+ICsjZGVmaW5lIFhFM19QRUFL
X0JXX1RIUkVTSE9MRAkyMDAwMA0KPiA+ICsNCj4gPiDCoHN0cnVjdCBpbnRlbF9wc2ZfZ3ZfcG9p
bnQgew0KPiA+IMKgCXU4IGNsazsgLyogY2xvY2sgaW4gbXVsdGlwbGVzIG9mIDE2LjY2NjYgTUh6
ICovDQo+ID4gwqB9Ow0KPiA+IEBAIC0xMDQ1LDYgKzEwNDcsNyBAQCBzdGF0aWMgaW50IG10bF9m
aW5kX3Fndl9wb2ludHMoc3RydWN0DQo+ID4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiDC
oAl1bnNpZ25lZCBpbnQgYmVzdF9yYXRlID0gVUlOVF9NQVg7DQo+ID4gwqAJdW5zaWduZWQgaW50
IG51bV9xZ3ZfcG9pbnRzID0gZGlzcGxheS0NCj4gPiA+YncubWF4WzBdLm51bV9xZ3ZfcG9pbnRz
Ow0KPiA+IMKgCXVuc2lnbmVkIGludCBxZ3ZfcGVha19id8KgID0gMDsNCj4gPiArCWludCBxZ3Zf
cG9pbnQgPSBudW1fcWd2X3BvaW50czsNCj4gPiDCoAlpbnQgaTsNCj4gPiDCoAlpbnQgcmV0Ow0K
PiA+IMKgDQo+ID4gQEAgLTEwODMsNiArMTA4Niw3IEBAIHN0YXRpYyBpbnQgbXRsX2ZpbmRfcWd2
X3BvaW50cyhzdHJ1Y3QNCj4gPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+IMKgCQlpZiAo
bWF4X2RhdGFfcmF0ZSAtIGRhdGFfcmF0ZSA8IGJlc3RfcmF0ZSkgew0KPiA+IMKgCQkJYmVzdF9y
YXRlID0gbWF4X2RhdGFfcmF0ZSAtIGRhdGFfcmF0ZTsNCj4gPiDCoAkJCXFndl9wZWFrX2J3ID0g
ZGlzcGxheS0NCj4gPiA+YncubWF4W2J3X2luZGV4XS5wZWFrYndbaV07DQo+ID4gKwkJCXFndl9w
b2ludCA9IGk7DQo+ID4gwqAJCX0NCj4gPiDCoA0KPiA+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5
LT5kcm0sICJRR1YgcG9pbnQgJWQ6IG1heCBidyAlZA0KPiA+IHJlcXVpcmVkICVkIHFndl9wZWFr
X2J3OiAlZFxuIiwNCj4gPiBAQCAtMTEwMiw2ICsxMTA2LDE4IEBAIHN0YXRpYyBpbnQgbXRsX2Zp
bmRfcWd2X3BvaW50cyhzdHJ1Y3QNCj4gPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+IMKg
CQlyZXR1cm4gLUVJTlZBTDsNCj4gPiDCoAl9DQo+ID4gwqANCj4gPiArCS8qDQo+ID4gKwkgKiBG
b3IgeGUzKywgaWYgZGlzcGxheSdzIHJlcXVpcmVkIG1lbW9yeSBidyA8PSAyMEdCL3MgYW5kDQo+
ID4gdGhlIHNlbGVjdGVkDQo+ID4gKwkgKiBwZWFrIGJ3IG9mIFFHVlswXSBpcyA+PSAyMCBHQi9z
LCB3ZSBjYW4gcmVkdWNlIHRoZSBwZWFrDQo+ID4gYncgZm9yIHRoZQ0KPiA+ICsJICogcG0gZGVt
YW5kIFFDTEsgR1YgdG8gMjBHQi9zDQo+ID4gKwkgKi8NCj4gPiArCWlmIChESVNQTEFZX1ZFUihk
aXNwbGF5KSA+PSAzMCAmJiBkYXRhX3JhdGUgPD0NCj4gPiBYRTNfUEVBS19CV19USFJFU0hPTEQg
JiYNCj4gPiArCcKgwqDCoCBxZ3ZfcG9pbnQgPT0gMCAmJiBxZ3ZfcGVha19idyA+PQ0KPiA+IFhF
M19QRUFLX0JXX1RIUkVTSE9MRCkgew0KPiA+ICsJCXFndl9wZWFrX2J3ID0gWEUzX1BFQUtfQldf
VEhSRVNIT0xEOw0KPiA+ICsJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIkxvdyBkaXNwbGF5
IGRhdGEtcmF0ZS4NCj4gPiBSZWR1Y2UgUE0gZGVtYW5kIGJ3IGZvciBRR1Y6ICVkIiwNCj4gPiAr
CQkJwqDCoMKgIHFndl9wZWFrX2J3KTsNCj4gPiArCX0NCj4gDQo+IEkgY2FuJ3QgZmlndXJlIG91
dCB3aGF0IHRoYXQgZG9lcy4gSWYgdGhpcyBpcyB0aGUgdGhpbmcgSSB0aGluayBpdA0KPiBpcywN
Cj4gdGhlbiB0aGUgcGxhbiB3YXMgdG8ganVzdCBhZGQgYSBuZXcgUUdWIHBvaW50IChpbiBkcml2
ZXIpIGZvciB0aGUNCj4gbG93ZXINCj4gZnJlcXVlbmN5Lg0KPiANCnFndl9wZWFrX2J3IHdpbGwg
YmUgc2V0IHRvIDIwZ2JwcyBvbiB0aGUgbmV4dCBwbWRlbWFuZCByZXF1ZXN0IGlmIHRoZQ0KY29u
ZGl0aW9uIG1hdGNoZXMuDQpuZXdfYndfc3RhdGUtPnFndl9wb2ludF9wZWFrYncgPSBESVZfUk9V
TkRfQ0xPU0VTVChxZ3ZfcGVha19idywgMTAwKTsNCg0KVGVjaG5pY2FsbHkgaXQgY291bGQgYmUg
YSBuZXcgZHJpdmVyIGxldmVsIFFHViBwb2ludCBhcyB5b3UgbWVudGlvbmVkLg0KQnV0IHRoYXQg
d291bGQgYmUgdHdlYWtpbmcgdGhlIGV4aXN0aW5nIFFHQyBwb2ludHMgcmVsYXRlZCBjb2RlIGlu
IFBUTCsNCndpdGggcG9wdWxhdGluZyByZXN0IG9mIHRoZSBzdHJ1Y3QgaW50ZWxfcWd2X3BvaW50
IG1lbWJlcnMgZnJvbSBxZ3ZbMF0uDQpXZSBoYXZlIHRoZSBtYXhpbXVtIG51bWJlciBvZiBxZ3Yg
cG9pbnRzIGRlZmluZWQgYXMgOC4gU28gaWYgdGhlcmUgd2VyZQ0KOCBwb2ludHMgYWxyZWFkeSBk
ZWZpbmVkIGluIGJpb3MsIHdlIHdpbGwgYmUgaW4gdHJvdWJsZSBJIHRoaW5rLsKgDQoNCkFsc28g
SSBkaWQgbm90IHNlZSBhbnkgc3VjaCBwbGFucyBpZiBpdCB3YXMgc3VnZ2VzdGVkIHNvbWV3aGVy
ZS4gQ291bGQNCnlvdSBwbHMgcG9pbnQgdGhhdCB0byBtZT8NCg0KQXMgcGVyIHRoZSBCc3BlYyA2
ODg4MCwgdGhpcyBpcyB3aGF0IEkgZm91bmQhDQoiDQpJZiBsb3dlc3QgdW5tYXNrZWQgR1YgcG9p
bnQgaXMgcG9pbnQgMCBBTkQgR1YgcG9pbnQgMCBiYW5kd2lkdGggPj0gMjANCkdCL3MgQU5EIGRp
c3BsYXkgcmVxdWlyZWQgbWVtb3J5IGJhbmR3aWR0aCA8PSAyMCBHQi9zLCBQTV9ETUQgQmFuZHdp
ZHRoDQpmb3IgUUNMSyBHViA9IElOVCgyMDApDQpFbHNlLCBQTV9ETUQgQmFuZHdpZHRoIGZvciBR
Q0xLIEdWID0gSU5UKEdWIHBvaW50IGJhbmR3aWR0aCAvIDEwMCkgaW4NCjEwMHMgb2YgTUIvcyAN
CiINCg0KQlINClZpbm9kDQoNCj4gPiArDQo+ID4gwqAJLyogTVRMIFBNIERFTUFORCBleHBlY3Rz
IFFHViBCVyBwYXJhbWV0ZXIgaW4gbXVsdGlwbGVzIG9mDQo+ID4gMTAwIG1icHMgKi8NCj4gPiDC
oAluZXdfYndfc3RhdGUtPnFndl9wb2ludF9wZWFrYncgPQ0KPiA+IERJVl9ST1VORF9DTE9TRVNU
KHFndl9wZWFrX2J3LCAxMDApOw0KPiA+IMKgDQo+ID4gLS0gDQo+ID4gMi40My4wDQo+IA0KDQo=
