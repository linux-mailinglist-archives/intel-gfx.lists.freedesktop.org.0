Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E66CF6D42
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 06:56:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C4B910E484;
	Tue,  6 Jan 2026 05:56:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RGOjfERF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B7A10E484;
 Tue,  6 Jan 2026 05:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767679000; x=1799215000;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1Ojf1BOy6C0cbnmRWONqaOqx/EWwzyijCE7smdvCmQQ=;
 b=RGOjfERFkUF4TU3WbVjN4tLTMZzUdlFo6hG8hplOorEt9qICU7HEYV7r
 jPxZYULK/BWaPsgi6gtDLz/+3RWKxzBxaXypi/8rpgYog+pV6BNMvYCdJ
 q2UgIkWlOyIM251dW7dR/rve3Bf66P/x4K4odSzgPLEj0MO7np3eUbkeA
 sAYtUgZkrpZJO1J8eGEnxEcXS1SV5RkNC9MwXMNx2sRr3lJVZm74VAzxq
 r5nz4aX9u5jKFlzBG0yGr5LvwCvq7MncBuM28RrosY3fhujxnaU47Odcl
 1XmXbqx2t05pRl68VpkSEHX5JCKJHDRliOjuvytU8I9blYStVjEuo/iBK A==;
X-CSE-ConnectionGUID: k7xKCnSqSTa0UQnM/UeZjg==
X-CSE-MsgGUID: NAvsho3oRZy6j1tFTkNUQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="86463195"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="86463195"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:56:40 -0800
X-CSE-ConnectionGUID: dqa8S1cJTZCaTnJqR+Tk1w==
X-CSE-MsgGUID: Ci8l7EBaR+eSgZtCKfs1Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="206718964"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:56:39 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:56:38 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 21:56:38 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.36) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:56:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bvzw7JEKEKMNM+3y8fFDe0906dYS1h2d6AaxxQjIM4GUC+8EdullFiQUL4LPbZm+wfyfMv/wm9Hz0XfGUAYru+5Z+pc+gc3xizXYFLmU16GkJL2WV41VpOo/x4Qcvzu7C28/FpBGlg+vfFBFgHh4mOzgn6rMnWjHcvpBpO0eVUDytQ3Y6bD13SENv1u5rbp2VLfFHqHJa+gpQJCRtx09WrKRXgeciFyANr5bEOCST+PqLSWhCfBZpVZals/0xWY5Is1UJFFrMShKrMcNUvj7WoxXixA6xbQblf5nHp8xi67QVCf912+y1bbkZsKdCvPm2agG/samGITlgruw4osRoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kA0zyJlGMt/4pI8Bzsn6i+rU3kHxuyl6MX24IXmhsrU=;
 b=VYtXNaerrM9WYvrTZclyCoOFHh3Eoqkbb+LxENWr2F9x0kCEqeyKdzr4kDV54P53kTtX+Kx3xujKWSpJK+S3qEGKsWMlZGRw/mXVXkOE1xIjOewc7LtDChUwjqtPjCRRPdNydC5NkAi2+Jjg3Z5XzUv15zU9Y4uxoFaTf+tI96aqDx4syArCA9WmP1pZ4H6RNhXQZkA6rs4YaigbHfIl4XIsr85uf3jsu//8bIuehuwKlvn93oEvSTpbhDlzVygRiJLTgc04Vj9NNc4cfdfNSMZSo4HufiAD73iYoXxqN0rQ7w/Dx954T4beCwqyrhBDQLnSB/WgeDdnnrhmtTl1cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SN7PR11MB8109.namprd11.prod.outlook.com (2603:10b6:806:2e0::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 05:56:36 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 05:56:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 07/15] drm/i915/lt_phy: Create macro for lt phy pll
 state
Thread-Topic: [PATCH v2 07/15] drm/i915/lt_phy: Create macro for lt phy pll
 state
Thread-Index: AQHcb2njia7B0Dj2DkyUmdpfZxLYBbVEw1DA
Date: Tue, 6 Jan 2026 05:56:36 +0000
Message-ID: <IA3PR11MB8937CB1EB33359E76AAC3C0FE387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-8-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-8-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SN7PR11MB8109:EE_
x-ms-office365-filtering-correlation-id: 96616dba-685c-4210-dd12-08de4ce85a30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?c3LKsrpoO4fq7FmpgoBeGCX7AiHlQpz6HH6Tow38j/brxkrAf9Ogz+QwDHZH?=
 =?us-ascii?Q?1tKYUa1Sr7MBMm3oX3Q7elCOPBtcu3QMsM3xPkpFiWgYzjPoS4ZFV7oktoPj?=
 =?us-ascii?Q?oY3heYg6Ejk11cfxx2XKYlaW0+/FLHgOdDu+f9c5ahTUtFBIkV09hqheJS4k?=
 =?us-ascii?Q?DV5QBWvt5qu4f1NtQ9n74V2ZJKFfVKGqpw05aqROHs4Qbbfb/IPtHn5icXqO?=
 =?us-ascii?Q?G9ttGTfH25apy6LSz2uMbLUIgNMQZoH0+FwgqhEWcsjDAUDeFLadmzPWCb5w?=
 =?us-ascii?Q?O7CNaVDb3MBAA3aNn9+Ue0YfYNW0GgsehVIOaFGuru6j5ur4bcyJsqeXWloq?=
 =?us-ascii?Q?HMjeJ6uIbTmm9JjT1ShTNGDFNjYncpM8KTVMp7MIGvU8KKSgUaJBz/8zx1e/?=
 =?us-ascii?Q?eFOrdYJamVvXcyosQBDlQwLaoi7YSsBzuHCGuIh0gqz4k9kdK53JoxQ80FQ0?=
 =?us-ascii?Q?momzc9XWezpv7YYeSqtX4Wbyq6PUEUNToijfAmQ44ZKruWo0WOzmRxEfux65?=
 =?us-ascii?Q?qihKXmLmmcHIuW/oXoL4z4GKLQ8Zo/TwpUQDFMrz+OpgiytWwaJZNx0fvtpw?=
 =?us-ascii?Q?+nyeiZ7UuLQCVAD/U9Rh5JptnbSpKW5gpXmRdlWydUXY2oSh1iKoX8h7dYJz?=
 =?us-ascii?Q?IXGKzpYhz8SUSgjfaMellqpi2Qkd5W4e29SbHIO9QTjgpUov3aEC03fCRwOv?=
 =?us-ascii?Q?0Hdg1M6Ls287br4fQIKCDtPyznhnRkJskDAZ+Nb+T9C3TkR+uPiV7LFO24Jh?=
 =?us-ascii?Q?X0mIhYy6Pd3G7EM/4+vgSSvwKGHTZyWs3v4UHwdIemqszo/bkWXu8FAmjfsc?=
 =?us-ascii?Q?OBE7Z4pkjHkxmoJml/cKOR5f8O2q7m0ttrCyvFNFxfzq6/nZ1QXfDL38+QhV?=
 =?us-ascii?Q?J5l/pab3SclRwZNjJOa1aKf/GtGswUv52l77JVdoUbCBhEZU0L91udkUww1u?=
 =?us-ascii?Q?gqt7MdprLkyItAC1Rlp89uxLZlmI6XKCJNRmLH6U2Zrirh9eAjRHQK3jXOYp?=
 =?us-ascii?Q?muhXE0dmtUrV3F0JaYr/Cbds9uU1Zi+ujVXfAiCP3ie4hYtD4BYEdCHEUGih?=
 =?us-ascii?Q?pfIRPpTocij5gtd8O32ebpl3iSRAaxUmh7T9jwCxmymNWQzQlDP77b3j5ULJ?=
 =?us-ascii?Q?JalVJ1wpTuVldoZ2w6AqcP6bPI/BntNgqmufUXLMSPhfgo7v7Ph2LrBD33gl?=
 =?us-ascii?Q?J4/yKsM+F1Ilqngyw7BsSfFMsRBMQCXYiH8TCzg4sntWP1qYRBi7mYZ3Ytdh?=
 =?us-ascii?Q?AnUyxlUHVdyPBnx4FYtcYGx9BMcbuY/qRuQPfUxSAGNmYnLDPKzwbuFjXM4i?=
 =?us-ascii?Q?xOXtqbSzzuKBLgbcMxHEGyJxcrPsxpl8b3ov4+yHSRnJmRK0rU3f5Sh827Us?=
 =?us-ascii?Q?+Un84YjpKwWVfhn7u//lCQsLrBu7gmrVoS+t7dOgyBwCHw3KG2N+xBLOD6Hq?=
 =?us-ascii?Q?hvPjF/nURRIZAxRn4zvnzCI4UAiu8kErk+0k44t1+ecYMlPU+0MBW5p2IMNY?=
 =?us-ascii?Q?522hwIlgQqHJ/duAeW4ICktJebQOCamumAWW?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0rxl/H4eTLJWgRxEWwfwM31vUTUqnWgczfXbWuKSrDUCXwdvH55yGB+ZyATB?=
 =?us-ascii?Q?ASPvMZH5mWw3sBh+S7mXsQMvrUWQfzKYuKR0IB2zRYPWKvA2bh4GAQJbGjTP?=
 =?us-ascii?Q?3JYXXL7wldRbfkzTD76Dgu9uA7pjtbPlsIz2xKhrBOwCqTy4riTTDpx5G7OM?=
 =?us-ascii?Q?oMW7x2s38yssWi7r3FSKBcrFJHYhXNAu7OQnMia4RrCHXjQqaY4oBPF5lBKx?=
 =?us-ascii?Q?/L5FvJQ76a0ITGVq4IRXfIvrwOMSCAdzM0hOofmKiRmpEQjUGMRPymA5j7c6?=
 =?us-ascii?Q?WTbjPr/YYD6j99fiemdNviX7jCBmv7+5H63oy1mzF0LI7ObR6QFJPm1Y2Ku1?=
 =?us-ascii?Q?wQzHsKnOWjmekXr/GjdxVDIKF9GUSnh8YnNTzsfdy66voWP9gpQxpqVWb3qj?=
 =?us-ascii?Q?C7x4aLjtBkDai8u7JIeq4sT8WgOX0tLa5lrHSlsRAatD/9B8To/8ef/oxgvd?=
 =?us-ascii?Q?BCzslLOpoc0BicOkM6acem68ujicakiYm1RB1uPUocpyYe0uWhSH9fdn4PoV?=
 =?us-ascii?Q?rUtd2EE147Q1fhQrKdvd6FZjmj2/uJY1kbq9eUJx+99ph4t2E48XWOwNZDsZ?=
 =?us-ascii?Q?+DM698vNm0s9T1lTWWHSsWAm2rsHMY3pDwcbXbm2KQEPQVY5TfE/YQhp9H0B?=
 =?us-ascii?Q?TnC3xrHydMhp8nF1eBuIwHykco00dgws7KX1lxp0tWE3gc7eRDuJnMhvZM1l?=
 =?us-ascii?Q?GfQVIJExVQoTYOwHYzefnYP3tWL3EktBxMO4rz4bgI48Hdlnj/HOlmT63cXn?=
 =?us-ascii?Q?QmpDHLDorCmIt6hrAr9pJQ/UAbVBA4DU+emW+Ctq17Mxqx8QUWQVJ8LCJvD3?=
 =?us-ascii?Q?i3fivIHv4HSF99ZiAvS7tNmWRpUpESF4EbBTURin7nC+egjOSMvzPqzDLHmW?=
 =?us-ascii?Q?oTBF484SZW3veIsitT8Esq1ydx0m4qWU8CHs7EbjG/NEX0N8LEGL+2kfBVtw?=
 =?us-ascii?Q?E+XKUXNMqY4nFtbKgbekIgBkEzz+O4ns8GJcE6Ubf1P7DNEXMJopY7p4rotG?=
 =?us-ascii?Q?0xX8e0L7dWPpCyDYUujxypXilPNogC3jmwOOv7G30wwa1cvTwvUfn56Kh11J?=
 =?us-ascii?Q?6xD0Qo6J13c2Drk6bYUb4MG7toaFaOX8E5r4J/F6EdEaD0CNkKamgq9wYssB?=
 =?us-ascii?Q?k7rBRsautJgt6F451WbwhYsCt3telGuvmLUOVKLXYNgjQIQyEE/wQg/QVGXa?=
 =?us-ascii?Q?kdNznz/ntHKtjH6e4OAEEkap73f0vKWYBnoLY8Qu+6ajqCHiy7e2u5Psl/+9?=
 =?us-ascii?Q?EHmArZ4OLe+jUQoPk04UeXfGzQmvtcUs/QNmu5GadBNik9CbDwqgV3H1hoMK?=
 =?us-ascii?Q?9mtiw49/Lt5cXA7S8nju/isAcOahRI9egN0rZ//tQRj99fawH9jdhz1Mfb6h?=
 =?us-ascii?Q?tuFrLoGVKL2ejyNioW/aQN1O+fzAfUjT32VR4BwgK2p2BIY9stMTnnTCMQx3?=
 =?us-ascii?Q?2wsatKis2HMGP7pcrhsv+wnrVqlwhiIXB7ge3u06IffFf9CAfrqG616qW1kR?=
 =?us-ascii?Q?qQ8zA1F1gAq4gSkl9o1/vhV7tqtn87wbVn1iC1rwo/qogbFjfNZsAvbtmKdT?=
 =?us-ascii?Q?Nhypi9vmlrBVw+G5+Xh3XXpnZK5rksNhUhoB4p9k0UzGvbM53+50kcBolyjP?=
 =?us-ascii?Q?dk6m1gz7T4odDLtxgmT/E0L9xjv4hef/qC+g+H7wa+fO36BikmCqcJOQaJ/C?=
 =?us-ascii?Q?8lzYgBjA+D+h+k+1O0J6nGkn21CXV6DkPZDpc2+GqozZvjmrlYi/HpXidzI0?=
 =?us-ascii?Q?bE6M8pX5XA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96616dba-685c-4210-dd12-08de4ce85a30
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 05:56:36.2033 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xjx9J42dYk8Y8B/Vw0nyG6K9Vjltprbhw6cBVUCza5whnhLJFQP10ryjeomTPWn0v3wKqpMMAnOLXtEvyZJ0Lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8109
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

> Subject: [PATCH v2 07/15] drm/i915/lt_phy: Create macro for lt phy pll st=
ate
>=20

*LT PHY PLL

> Create a macro for pll state for lt phy similar as for cx0 case.

* PLL state
* LT PHY=20

With those fixed,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> v2:
> - Move addition of LT_PHY_PLL_DP/HDMI_PARAMS() to this patch.
> - Fix end of table checking while looking up a table.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 83 +++++++++++++--------
>  1 file changed, 50 insertions(+), 33 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 74b0bc90c959..64e223f35fdf 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -436,15 +436,32 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_dp_uhbr20 =3D {
>  	},
>  };
>=20
> -static const struct intel_lt_phy_pll_state * const xe3plpd_lt_dp_tables[=
] =3D {
> -	&xe3plpd_lt_dp_rbr,
> -	&xe3plpd_lt_dp_hbr1,
> -	&xe3plpd_lt_dp_hbr2,
> -	&xe3plpd_lt_dp_hbr3,
> -	&xe3plpd_lt_dp_uhbr10,
> -	&xe3plpd_lt_dp_uhbr13_5,
> -	&xe3plpd_lt_dp_uhbr20,
> -	NULL,
> +struct intel_lt_phy_pll_params {
> +	const char *name;
> +	bool is_hdmi;
> +	int clock_rate;
> +	const struct intel_lt_phy_pll_state *state; };
> +
> +#define __LT_PHY_PLL_PARAMS(__is_hdmi, __clock_rate, __state)    { \
> +	.name =3D __stringify(__state), \
> +	.is_hdmi =3D __is_hdmi, \
> +	.clock_rate =3D __clock_rate, \
> +	.state =3D &__state, \
> +}
> +
> +#define LT_PHY_PLL_HDMI_PARAMS(__clock_rate, __state)
> 	__LT_PHY_PLL_PARAMS(true, __clock_rate, __state)
> +#define LT_PHY_PLL_DP_PARAMS(__clock_rate, __state)
> 	__LT_PHY_PLL_PARAMS(false, __clock_rate, __state)
> +
> +static const struct intel_lt_phy_pll_params xe3plpd_lt_dp_tables[] =3D {
> +	LT_PHY_PLL_DP_PARAMS(162000, xe3plpd_lt_dp_rbr),
> +	LT_PHY_PLL_DP_PARAMS(270000, xe3plpd_lt_dp_hbr1),
> +	LT_PHY_PLL_DP_PARAMS(540000, xe3plpd_lt_dp_hbr2),
> +	LT_PHY_PLL_DP_PARAMS(810000, xe3plpd_lt_dp_hbr3),
> +	LT_PHY_PLL_DP_PARAMS(1000000, xe3plpd_lt_dp_uhbr10),
> +	LT_PHY_PLL_DP_PARAMS(1350000, xe3plpd_lt_dp_uhbr13_5),
> +	LT_PHY_PLL_DP_PARAMS(2000000, xe3plpd_lt_dp_uhbr20),
> +	{}
>  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 =3D { @@ =
-
> 717,17 +734,17 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_edp_6_75 =3D {
>  	},
>  };
>=20
> -static const struct intel_lt_phy_pll_state * const xe3plpd_lt_edp_tables=
[] =3D {
> -	&xe3plpd_lt_dp_rbr,
> -	&xe3plpd_lt_edp_2_16,
> -	&xe3plpd_lt_edp_2_43,
> -	&xe3plpd_lt_dp_hbr1,
> -	&xe3plpd_lt_edp_3_24,
> -	&xe3plpd_lt_edp_4_32,
> -	&xe3plpd_lt_dp_hbr2,
> -	&xe3plpd_lt_edp_6_75,
> -	&xe3plpd_lt_dp_hbr3,
> -	NULL,
> +static const struct intel_lt_phy_pll_params xe3plpd_lt_edp_tables[] =3D =
{
> +	LT_PHY_PLL_DP_PARAMS(162000, xe3plpd_lt_dp_rbr),
> +	LT_PHY_PLL_DP_PARAMS(216000, xe3plpd_lt_edp_2_16),
> +	LT_PHY_PLL_DP_PARAMS(243000, xe3plpd_lt_edp_2_43),
> +	LT_PHY_PLL_DP_PARAMS(270000, xe3plpd_lt_dp_hbr1),
> +	LT_PHY_PLL_DP_PARAMS(324000, xe3plpd_lt_edp_3_24),
> +	LT_PHY_PLL_DP_PARAMS(432000, xe3plpd_lt_edp_4_32),
> +	LT_PHY_PLL_DP_PARAMS(540000, xe3plpd_lt_dp_hbr2),
> +	LT_PHY_PLL_DP_PARAMS(675000, xe3plpd_lt_edp_6_75),
> +	LT_PHY_PLL_DP_PARAMS(810000, xe3plpd_lt_dp_hbr3),
> +	{}
>  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 =3D { @@ =
-
> 1000,13 +1017,13 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_hdmi_5p94 =3D {
>  	},
>  };
>=20
> -static const struct intel_lt_phy_pll_state * const xe3plpd_lt_hdmi_table=
s[] =3D {
> -	&xe3plpd_lt_hdmi_252,
> -	&xe3plpd_lt_hdmi_272,
> -	&xe3plpd_lt_hdmi_742p5,
> -	&xe3plpd_lt_hdmi_1p485,
> -	&xe3plpd_lt_hdmi_5p94,
> -	NULL,
> +static const struct intel_lt_phy_pll_params xe3plpd_lt_hdmi_tables[] =3D=
 {
> +	LT_PHY_PLL_HDMI_PARAMS(25200, xe3plpd_lt_hdmi_252),
> +	LT_PHY_PLL_HDMI_PARAMS(27200, xe3plpd_lt_hdmi_272),
> +	LT_PHY_PLL_HDMI_PARAMS(74250, xe3plpd_lt_hdmi_742p5),
> +	LT_PHY_PLL_HDMI_PARAMS(148500, xe3plpd_lt_hdmi_1p485),
> +	LT_PHY_PLL_HDMI_PARAMS(594000, xe3plpd_lt_hdmi_5p94),
> +	{}
>  };
>=20
>  static u8 intel_lt_phy_get_owned_lane_mask(struct intel_encoder *encoder=
)
> @@ -1345,7 +1362,7 @@ static void intel_lt_phy_transaction_end(struct
> intel_encoder *encoder, struct r
>  	intel_display_power_put(display, POWER_DOMAIN_DC_OFF,
> wakeref);  }
>=20
> -static const struct intel_lt_phy_pll_state * const *
> +static const struct intel_lt_phy_pll_params *
>  intel_lt_phy_pll_tables_get(struct intel_crtc_state *crtc_state,
>  			    struct intel_encoder *encoder)
>  {
> @@ -1734,7 +1751,7 @@ intel_lt_phy_calc_hdmi_port_clock(struct
> intel_display *display,
>  	if (d8 =3D=3D 0) {
>  		drm_WARN_ON(display->drm,
>  			    "Invalid port clock using lowest HDMI portclock\n");
> -		return xe3plpd_lt_hdmi_252.clock;
> +		return xe3plpd_lt_hdmi_tables[0].clock_rate;
>  	}
>  	m2div_int =3D (pll_reg_3  & REG_GENMASK(14, 5)) >> 5;
>  	temp0 =3D ((u64)m2div_frac * REF_CLK_KHZ) >> 32; @@ -1775,16
> +1792,16 @@ int  intel_lt_phy_pll_calc_state(struct intel_crtc_state
> *crtc_state,
>  			    struct intel_encoder *encoder)
>  {
> -	const struct intel_lt_phy_pll_state * const *tables;
> +	const struct intel_lt_phy_pll_params *tables;
>  	int i;
>=20
>  	tables =3D intel_lt_phy_pll_tables_get(crtc_state, encoder);
>  	if (!tables)
>  		return -EINVAL;
>=20
> -	for (i =3D 0; tables[i]; i++) {
> -		if (crtc_state->port_clock =3D=3D tables[i]->clock) {
> -			crtc_state->dpll_hw_state.ltpll =3D *tables[i];
> +	for (i =3D 0; tables[i].name; i++) {
> +		if (crtc_state->port_clock =3D=3D tables[i].clock_rate) {
> +			crtc_state->dpll_hw_state.ltpll =3D *tables[i].state;
>  			if (intel_crtc_has_dp_encoder(crtc_state)) {
>  				if (intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_EDP))
>  					crtc_state-
> >dpll_hw_state.ltpll.config[2] =3D 1;
> --
> 2.34.1

