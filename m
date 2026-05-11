Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDYPF0iPAWoVeQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 10:11:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 638E8509E34
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 10:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BBDF10E179;
	Mon, 11 May 2026 08:11:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VPas72S/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE9E310E179;
 Mon, 11 May 2026 08:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778487108; x=1810023108;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1SIul3fwTI+/qS9+m23RIZp8oUFDRGJ8Gorn/GrXNqU=;
 b=VPas72S/Zd7JbRMPsTmmYr9W0haHgFMA3FiSYKnyH3H0BBfXAPPSulU4
 ur6oImyi4+5I02n3oDlUZTl+V57ydBX/HhBG2/Viu8WqJVMsB05QvJfxT
 QWFqBx6lM0EOS+aISH3pZp3lGqPgs8eEQsjwsgJfMRTirhampypHw3EON
 +xmSkmTwRQlwx6FhF2zRW2+LGz6osknPr8Hv7BoyU6p8vBj7Z1PcMPOzZ
 UnlwvMYbGLpQGx0n+W+DdTAu6WYQ1vWbS3l+HbyuY0iiBTMTnVnXIoUUU
 VJEOp9EU19hNOfx9pETZk6VV9mOs4KZbsVGGtNxkFPEXnJGHCxJu0xr7W A==;
X-CSE-ConnectionGUID: /hsEPtvSRaaoX+QlFo1sbg==
X-CSE-MsgGUID: fUPmMVfTTy2pkZbeS4fknw==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="89951338"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="89951338"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:11:47 -0700
X-CSE-ConnectionGUID: RMInod6TSCaoX75xJRpPYw==
X-CSE-MsgGUID: tUcj4lqyQr6j/zNCNPLoOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="237616408"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 01:11:47 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:11:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 01:11:46 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.41) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 01:11:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eWxEu5GiUHC0nYEYVovieGz8eiFjpDK4VQmSEiXIzAkLLjT0L/F6BUEfNsCQgrCcmjn2jJPq1mrivm6yubPNxg6VJK1HxqkCDRAZkJyn4WHm1caLQGI4YqP0Z47ajdTlkQ44KJjRD0qKL7jQ/+oQ8D7Bt/Fvf6zpLI8ZgDZkzWaa/OlYe2t8AW+BVl+bGANh/t6jpedhjx28CGQhNbQBrSEUFA/ff7v8p1AJcaVP8Ag+gHh8BXjASAen7w8Mrkr0oWsIUaU/ap64I2+U4kczXZSBZXNt8uZUPRQS2j5erP7PcABT6+av7Kj/7PTGWOdKQF6abBoUXKQA7QEMj2TaGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1SIul3fwTI+/qS9+m23RIZp8oUFDRGJ8Gorn/GrXNqU=;
 b=NxgCgUZjPS9Z6D1kDQr12SF4ZIkUUUW70vgsW9OIznYunStCpjIglsaXkkRBcPqAzRfTKy76yiv9AQpuL72P7VrDJ59TlbBIWOcmgWUD4xRF3hoiAYRCg2xETZHfPw7O6Icz0TVahcsOAayYRz5dWhe+cfzpOcTwm+62A/0j7Cw3fxbq81nK8vEqw3PuwMdhOTDAZnXbNNoo2EBKrVuB6MeReEmu11RCSpADKIkUkYMccCe5NQw75AzoBogM+8/bgLYPFS5IuLLZev9FFBHGpluUOaaWWMDMb6vMDYj4PBSbt0qNAKnJUkfW5wf3W1zLtLI2h0Di/YSCUZC4yAiqsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 (2603:10b6:518:1::d41) by SN7PR11MB7565.namprd11.prod.outlook.com
 (2603:10b6:806:344::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 08:11:44 +0000
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b]) by PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 08:11:43 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, Aaron Esau <aaron1esau@gmail.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>, "tursulin@ursulin.net"
 <tursulin@ursulin.net>, "Kahola, Mika" <mika.kahola@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH 0/3] drm/i915/cx0: fix PLL enable failure handling on
 Meteor Lake
Thread-Topic: [PATCH 0/3] drm/i915/cx0: fix PLL enable failure handling on
 Meteor Lake
Thread-Index: AQHc4GTkI6CXMBCidEqW/0L13taRprYIeHqAgAAB+1A=
Date: Mon, 11 May 2026 08:11:43 +0000
Message-ID: <PH3PPFAB4263235468A2B9B8DF8A27ABA2FE0382@PH3PPFAB4263235.namprd11.prod.outlook.com>
References: <20260509162407.510539-1-aaron1esau@gmail.com>
 <agGNSW0r6w-IHW_q@ideak-desk.lan>
In-Reply-To: <agGNSW0r6w-IHW_q@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPFAB4263235:EE_|SN7PR11MB7565:EE_
x-ms-office365-filtering-correlation-id: 4290ba28-16b9-4c85-eee2-08deaf34f05a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|38070700021|56012099003|3023799003;
x-microsoft-antispam-message-info: KSMDB0oBEbFmQQpXk0KxdBjZEXuI42IISPp7pWuYgyCbQuRs3nSJ/5Jf+Fkr0NPywpaauF0onoXNGtf1KcfdTBihej/KGEAxnaLx4DaBBizmz0Er+gLn7difednMPjsCMLY4f+j88a+LaH3sTuzhYbyl1+ooyS/q2l8Xd3nGDBvsPIeO757QNICQwUu+Eh5hTXsxzMzDEoBbzo62wTtV315IMEDlppWF216IvmngK3sFaCitfEnmYGYK6yNp4AhMZRaPcNvLNNuFVja6dYYXiSUKlh3P581/Vj0skZXX55lbTFSp7ulXRSbL7mRYOzdUW7wxQo4eT27Xnm5L+X4jslReGTAVGu6eUIEEwqspu2eEYx6sfNZHdugNL8TlSA7jD5uGqnRwrGUj0F5JKqNmsKI4AGfzjnOu973VMN1HEGiimbaLWN8FAHiAFwV3Rz1C+DsPxljxW6PQ9WalPG8PsQsRN54/UfW614I8pNhDp1QKrlwuM4ImQmZFcpgmMKnwX81gQ8c9wVaHJpY1wnX8We2GHZbV2LP6kQll6AaBtpZJPKyDGBi2BB6KdpRtDd8z8OTTocErGmcl6q6n387lME1+r5w3BONbTOzBTETrun2yaJwd/OrV2TSTfKJFgaBVvzDCS9+CeRxgjspaBfm3YSd6Mqx8UFRXzFzIjXb/eFmfAQpFoKJgWNroihgu+xaAFPTmLLsMAt5EHiCQ0D6uYw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPFAB4263235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(38070700021)(56012099003)(3023799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFJQeDNRRENzeTZxRTM1U0ZvcjAzOGQvdU1FTkFYYXV3cXVyVkRBZnV5cUtJ?=
 =?utf-8?B?ZGdIWU9LV1UrRHBwQkxwYTY4ZnRjdS9aQVl2WEhSOS9YZk8vN1lZMHpmY25I?=
 =?utf-8?B?NVNsSWk4eHhERElYL09sNTJ5ZSs1b2dlemZMRjA3a1lCakpXSGlPaUhQMkJW?=
 =?utf-8?B?eEw0K2JJQWhHampsYzBPbU9HSkxnMWlCaWQ5OUZrNGdSdG52c29RTDRTSmNa?=
 =?utf-8?B?VjE0NlpnUEtjYjBmU1ptQnhEcDgycU8zZU9iL1JRZTkyTmtIL1BldWhEWE10?=
 =?utf-8?B?ZTloVUZ0Y0tJUFlKQk5LUmZRMXgyT1E4YVpEWjlGNlh6V0UyQVFWMG95NXJW?=
 =?utf-8?B?eXVoSElvR0N6YWlGbXVWQVk0T3lvaFNxcUdTUHhnUUFvT0g5QTh0VnhwcHVL?=
 =?utf-8?B?TUFSVUpobUNlTDVDR2hFMWY3c0M1QzQyaS8rdzVlNEFZeDRsaWdqZWwvU1F6?=
 =?utf-8?B?Q0N0RUVJZEo5M2ttN0xaWVZNSDRmcnRRMVIxYzZTd3lkRzU5aXhjZTJCY0JO?=
 =?utf-8?B?NHJhbUJ6ZVZ6dkZiSkltRDlWTk1CU21mUTAvZ0FFNjcxblNiTTQvaCt5WG9H?=
 =?utf-8?B?cGpmaU9qN2FEYmluMmF3M0ZUZEZFSXlWeWZocEt4UTFZT0Z0THczcXBlbGJG?=
 =?utf-8?B?SWt2aXd3TWZEcG4wcy9mdVQzUXhWWm4wTUIyb09uNUFlM3R2YUJUS09DUVpo?=
 =?utf-8?B?TTRIeVd1UnNmdDNCSXVBQ0gvYTA2djIzMXMwUUZKbGdoUmVQTWZleWZnK25V?=
 =?utf-8?B?enU3dlJ3RHVWY3FkWExvallRaTZrMnpheml6aFhtWS8vYi8xODRVbmNDVEFV?=
 =?utf-8?B?L2J6UmdRbkltN1MzN1JaUnVwVHhmVTJyWFFEQjdsVmZSVk5HWk1VTUI4VlU1?=
 =?utf-8?B?d21NbXZYU2FhMkl0MUZhc0lzQXVoY1lBb3Y1UU9tNWtNS1gxRS9nQUtYS0pG?=
 =?utf-8?B?WjV5bVMxSGk3QkNkOEowdnpPbm80eXREYVFudjd1cnFseUVCVnM2QzVQZUtQ?=
 =?utf-8?B?N25LaENuSzdlakt4WlM0ZUNJUW9Pdy9oOGNkU3RKZE0vcC9yVmxDOEpOMWFM?=
 =?utf-8?B?cWR2OGJBRWZLQ3RTWHJiL05NaFpISSsvd3JSdzVlNWN5WVQvUkNXWFpNZFg1?=
 =?utf-8?B?NE1oTHl3OElSREVkZlpiRlovSWF3aG5POG9LNmllb2lORXZpTjRUT2NNU1k4?=
 =?utf-8?B?K3htVkNaLy9XYzFHamo0bWxLc3Y4dEhWKzFLOUE0RSt6V0V0a0NJdmt1SHZo?=
 =?utf-8?B?WkhEZFpkdnZVUjBIaktjd1JuaHNIWVZaZHpqbFJqaGRFZFdvZUJ6UFZTSmpW?=
 =?utf-8?B?KytkVnQzTjBsck1qdWxKL2tBY0RrMEt1Tk9wN2lqOVNUVDR1ZzlNYks0M2Zw?=
 =?utf-8?B?YXVhWFN1MWp5T0NuQVJjVFl4UytqUTJsZXk3ZTg4NmJEOVpHMENHdHZYYkN1?=
 =?utf-8?B?L3ZLVE90THdWMCtYUFFXT29uSXlUNEJkd2xWaS9WcTE3SWF3Qy9vdW5VaE5M?=
 =?utf-8?B?VnYvTDlDbnhNaGtUWFJPRlNGMjAzTVhjLzFDTlZlVmRiRlFwUG1HVE1oNTlJ?=
 =?utf-8?B?RkxyMU0xdkF4UTRyZS9DRlNSVjVBWW9JK2dnYVhjSWVpWHBXSXk2OU10OWR3?=
 =?utf-8?B?YURkVWlrOUJSY3BKd0RmUkpram9vU1pZaTE2V2xUTU5aOE1OcjJOQTRSak1j?=
 =?utf-8?B?eTd6c2FWM3ZrNkhoZmNUYWpOcTdjRjU0TmtSQ0JaT1JBeTBkWXB3YmNYZnNR?=
 =?utf-8?B?b3BRMGs4bkZqNEVpcXhjeDQ5TWx0RkdMcnYzUUdvVXAzK2phZTJnaGlqNUFh?=
 =?utf-8?B?blIwcEowQThPTVBTTi9POGZ5QjBuVlBqZ21kRHRvdUxvUlEreFRJbHBkUXpa?=
 =?utf-8?B?THBsSis2Nnp2RkQ1OFhIOHViU01mNG5PR1VZQk5lT2NTUnpXc1Y5VWw2Zmpz?=
 =?utf-8?B?YnVjTnZuWjA3WVVEcXJwb0J1Wk8xWHpMNkFZRlhQMlVIamw4Q1diZ2pCcEJD?=
 =?utf-8?B?ZmJBSm9mYS9FRmFveFpTWWZJa3dDbmFkUWt6azJBbUc4dDc2cG8rVGRVbEhD?=
 =?utf-8?B?RUZWTHVWQ1YxTzBlNU5pM00vdVgrbVlqL2tFd0ZVY25qNm9tRDl6dXFyemx5?=
 =?utf-8?B?NnNzcEY5QlEySVhUdXA0S0hWTWt2S0FFZTVzd2lOMlZOSmVNamNjN1l6RTNm?=
 =?utf-8?B?RjZ5cWo5MDVjN1R0emZHcnFHeld2Wm5UV0I3MFFTVHBIc2JNT0kydmpDNlhM?=
 =?utf-8?B?S3JSZi9kcXhEQkJPWHBZRTd4WHE0endXWkpPendGVlpvbllmbU0wUmwrTFZO?=
 =?utf-8?B?ckpXSzhScVBYaG5ESlRDWWI0S05hbkFXZHV4ZTJ1YXYzdnVvREJmUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BCWZ3OR2T9cmf8uhhpT2d6QfCaBygvlxiNDx3xXiDtXRwjjzpPnLTLJ155uCaAy0rnK3EQ3fEOMmlhUIRIaGIXdKqR4IxGKDfrO4GVTZLL6kql6/614ydWIsCu8Sp+eSKQb/jeizLOVui20hUkEvWVXuQB29Bp/ZYj/ZFzGHxchRCOWNkcY56hKQ991UW7j3THGJTCmwJWB5vNV8L+Lc33/uzXdM3od66gkc8kksV8ztaEPw1k0dLF9CUdnDKKBhRVaLX9LrN936Q/FMrczl1tXHhPbTlEf2us3pNALjeWZaq50lRrnhWuGtY+Zq8ilZmTDN2cdIiFvIwjKGHt/XdQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPFAB4263235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4290ba28-16b9-4c85-eee2-08deaf34f05a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 08:11:43.8324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1/UWzAf2vRyeWi9uRGScdXiR2rftir/7U9EC//Wp77m3XOyX/Jgd1RRKSb76GwgiObDWPIyxdraCv0PaVxKJGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7565
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
X-Rspamd-Queue-Id: 638E8509E34
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,pages.freedesktop.org:url,PH3PPFAB4263235.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.saarinen@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50
ZWwteGUtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlDQo+
IERlYWsNCj4gU2VudDogTW9uZGF5LCAxMSBNYXkgMjAyNiAxMS4wMw0KPiBUbzogQWFyb24gRXNh
dSA8YWFyb24xZXNhdUBnbWFpbC5jb20+DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGRyaS0NCj4gZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb207IFZpdmksIFJv
ZHJpZ28NCj4gPHJvZHJpZ28udml2aUBpbnRlbC5jb20+OyBqb29uYXMubGFodGluZW5AbGludXgu
aW50ZWwuY29tOw0KPiB0dXJzdWxpbkB1cnN1bGluLm5ldDsgS2Fob2xhLCBNaWthIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+Ow0KPiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFJl
OiBbUEFUQ0ggMC8zXSBkcm0vaTkxNS9jeDA6IGZpeCBQTEwgZW5hYmxlIGZhaWx1cmUgaGFuZGxp
bmcgb24NCj4gTWV0ZW9yIExha2UNCj4gDQo+IE9uIFNhdCwgTWF5IDA5LCAyMDI2IGF0IDExOjI0
OjA0QU0gLTA1MDAsIEFhcm9uIEVzYXUgd3JvdGU6DQo+ID4gT24gTWV0ZW9yIExha2Ugd2l0aCBh
IGh5YnJpZCBJbnRlbC9OVklESUEgR1BVIHNldHVwLCBzMmlkbGUgcmVzdW1lIGNhbg0KPiA+IGxl
YXZlIHRoZSBDWDAgUEhZIE1TR0JVUyB1bnJlc3BvbnNpdmUuIFdoZW4gdGhpcyBoYXBwZW5zLCB0
aGUgUExMDQo+ID4gZW5hYmxlIHNlcXVlbmNlIHNpbGVudGx5IGZhaWxzOiByZWdpc3RlciB3cml0
ZXMgdmlhIE1TR0JVUyBhcmUNCj4gPiBkcm9wcGVkLCB0aGUgUExMIG5ldmVyIGxvY2tzLCBidXQg
dGhlIGRyaXZlciBtYXJrcyBpdCBhcyBlbmFibGVkIGFuZA0KPiA+IHByb2NlZWRzIHRvIGRyaXZl
IHRoZSBwaXBlLg0KPiA+DQo+ID4gVGhlIHJvb3QgY2F1c2Ugb2YgdGhlIE1TR0JVUyBiZWNvbWlu
ZyB1bnJlc3BvbnNpdmUgYXBwZWFycyB0byBiZSB0aGUNCj4gPiBOVklESUEgZEdQVSBub3QgcGFy
dGljaXBhdGluZyBpbiBTMGl4IChhZGRyZXNzZWQgdmlhIHRoZQ0KPiA+IE5WcmVnX0VuYWJsZVMw
aXhQb3dlck1hbmFnZW1lbnQgbW9kdWxlIHBhcmFtZXRlcikuIEhvd2V2ZXIsIHRoZQ0KPiBpOTE1
DQo+ID4gZHJpdmVyIHNob3VsZCBoYW5kbGUgUExMIGVuYWJsZSBmYWlsdXJlcyBncmFjZWZ1bGx5
IHJlZ2FyZGxlc3Mgb2YgdGhlDQo+ID4gdHJpZ2dlci4NCj4gPg0KPiA+IFRoaXMgc2VyaWVzOg0K
PiA+ICAgMS4gRml4ZXMgaW50ZWxfY3gwX3BsbF9pc19lbmFibGVkKCkgdG8gY2hlY2sgdGhlIGhh
cmR3YXJlIEFDSyBiaXQsDQo+ID4gICAgICBub3QganVzdCB0aGUgZHJpdmVyLXNldCBSRVFVRVNU
IGJpdCwgc28gYSBQTEwgdGhhdCBmYWlsZWQgdG8gbG9jaw0KPiA+ICAgICAgaXMgY29ycmVjdGx5
IHJlcG9ydGVkIGFzIGRpc2FibGVkLg0KPiA+ICAgMi4gQWRkcyBlcnJvciBwcm9wYWdhdGlvbiB0
aHJvdWdoIHRoZSBEUExMIGVuYWJsZSBwYXRoOiBjaGFuZ2VzIHRoZQ0KPiA+ICAgICAgLmVuYWJs
ZSBjYWxsYmFjayB0byByZXR1cm4gaW50LCB0aHJlYWRzIGVycm9ycyB0aHJvdWdoDQo+ID4gICAg
ICBfaW50ZWxfZW5hYmxlX3NoYXJlZF9kcGxsKCkgYW5kIGludGVsX2RwbGxfZW5hYmxlKCksIGFu
ZCBjaGVja3MNCj4gPiAgICAgIHRoZSByZXN1bHQgaW4gaHN3X2NydGNfZW5hYmxlKCkgYW5kIGls
a19wY2hfZW5hYmxlKCkuDQo+ID4gICAzLiBNYWtlcyB0aGUgQ1gwIFBMTCBlbmFibGUgcGF0aCBy
ZXR1cm4gLUVUSU1FRE9VVCB3aGVuIHRoZSBQSFkNCj4gPiAgICAgIGZhaWxzIHRvIGNvbWUgb3V0
IG9mIHJlc2V0IG9yIHRoZSBQTEwgZmFpbHMgdG8gbG9jay4NCj4gPg0KPiA+IEZvdW5kIG9uIGEg
TGVub3ZvIFRoaW5rUGFkIHdpdGggSW50ZWwgVWx0cmEgNyAxNTVIIGFuZCBOVklESUEgUlRYIDIw
MDANCj4gPiBBZGEuIEtlcm5lbCB0cmFjZXMgYmVmb3JlIGVhY2ggY3Jhc2g6DQo+ID4NCj4gPiAg
IGk5MTU6IEZhaWxlZCB0byBicmluZyBQSFkgQSB0byBpZGxlLg0KPiA+ICAgaTkxNTogUEhZIEEg
UmVhZCAwYzcwIGZhaWxlZCBhZnRlciAzIHJldHJpZXMuDQo+ID4gICBpOTE1OiBUaW1lb3V0IHdh
aXRpbmcgZm9yIERESSBCVUYgQSB0byBnZXQgYWN0aXZlDQo+ID4gICBpOTE1OiBbQ1JUQzoxNDk6
cGlwZSBBXSBmbGlwX2RvbmUgdGltZWQgb3V0DQo+IA0KPiBUaGlzIGxvb2tzIHRvIGJlIGFuIGlz
c3VlIGluIHRoZSBCSU9TL0ZXIGxlYXZpbmcgdGhlIFBIWSBhbmQgZGlzcGxheSBvdXRwdXQNCj4g
SFcgc3RhdGUgaW4gZ2VuZXJhbCBpbiBhIGJyb2tlbiBzdGF0ZS4gQ291bGQgeW91IHBsZWFzZSBv
cGVuIGEgdGlja2V0IGFuZA0KPiBwcm92aWRlIGEgZnVsbCBkbWVzZyBsb2cgYm9vdGluZyB3aXRo
IGRybS5kZWJ1Zz0weGUsIHNvIHdlIGhhdmUgYSBiZXR0ZXIgaWRlYQ0KPiBvbiB0aGUgc2VxdWVu
Y2UgYW5kIHByb3BlciB3YXlzIHRvIHdvcmsgYXJvdW5kIHN1Y2ggaXNzdWVzPw0KQW5kIHRoaXMg
d2l0aCB0aGlzIGluc3RydWN0aW9uIGh0dHBzOi8vZHJtLnBhZ2VzLmZyZWVkZXNrdG9wLm9yZy9p
bnRlbC1kb2NzL2hvdy10by1maWxlLWk5MTUtYnVncy5odG1sDQoNCj4gDQo+IFRoYW5rcy4NCg0K
QnIsDQpKYW5pDQo+IA0KPiA+DQo+ID4gQWFyb24gRXNhdSAoMyk6DQo+ID4gICBkcm0vaTkxNS9j
eDA6IGNoZWNrIFBMTCBBQ0sgYml0IGluIGludGVsX2N4MF9wbGxfaXNfZW5hYmxlZCgpDQo+ID4g
ICBkcm0vaTkxNS9kcGxsOiBhZGQgZXJyb3IgcHJvcGFnYXRpb24gdG8gRFBMTCBlbmFibGUgcGF0
aA0KPiA+ICAgZHJtL2k5MTUvY3gwOiByZXR1cm4gZXJyb3JzIGZyb20gQ1gwIFBMTCBlbmFibGUg
b24gZmFpbHVyZQ0KPiA+DQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3gwX3BoeS5jICB8IDU0ICsrKysrKysrLS0tLQ0KPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3gwX3BoeS5oICB8ICA2ICstDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMTAgKystDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgODcgKysrKysrKysrKysrKystLS0tLQ0KPiA+
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaCB8ICAyICstDQo+
ID4gLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BjaF9kaXNwbGF5LmMgIHwgIDcgKy0N
Cj4gPiAgNiBmaWxlcyBjaGFuZ2VkLCAxMTcgaW5zZXJ0aW9ucygrKSwgNDkgZGVsZXRpb25zKC0p
DQo+ID4NCj4gPiAtLQ0KPiA+IDIuNTQuMA0KPiA+DQo=
