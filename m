Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6I2yHa+Ir2lvaAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 03:57:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6B9244834
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 03:57:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F05610E629;
	Tue, 10 Mar 2026 02:57:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NXkTiTP0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9C910E628;
 Tue, 10 Mar 2026 02:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773111467; x=1804647467;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HgKdfoPCRPtBkVB1/pXmSC7OGbnZ1AfPjtMH1/wbecc=;
 b=NXkTiTP0Y2iBARws+fzQkvEeIichrrqyarw2X7Z6T1g5a/p6bpo3V50g
 vt30eoVJ9s/2mNoGJhxzM37ZJTwzqCtzWzR+uKIQaQhxK9g6O4qSqOODu
 rqEcCEeZvkug0zmK18QgGbdzAh3Wo1TqEi3R7+1RwEG+djdp5zrCNesX5
 2x5g6nFDql6RX52AcI/j79OmHuw7GVi/wnH9eHq882HG6+MRdRNsb601k
 STr9AzFIzGeRojNPELM/jJ3FnHGX+l4/T+xad+q+76GRhjqEOLro4hY3I
 ndfBUsGlFXNYHaRWXc34SWANHY4WQsoqIouPDGiE7tS1idIaKSfA4vizI A==;
X-CSE-ConnectionGUID: YspPxbFWQeG7xcObCl9gHQ==
X-CSE-MsgGUID: jrpT/iEqSAqYZALmWAFE4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="73848205"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="73848205"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 19:57:43 -0700
X-CSE-ConnectionGUID: 4B6M/8iaR5W2cAXJiYZFCQ==
X-CSE-MsgGUID: oDysQ2R4TRyAYrZvUSr9sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="245800851"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 19:57:42 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 19:57:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 19:57:41 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 19:57:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lEq52pFQvhOaH1n0HIHV6cFT12XHIWpl5ieN4mVf8YznthsG4IlUW0dVzrie2JHB32PSpfTdf/i/YRmmcKTwHqc68RVq878dtuVVfpySD0Fssh8cxQEhxAIyB/HSpcTzQpkD9McXA4FkG/iAbT+SHOUd3JwqFuZYFl5DZTQAo5EQKosg9BkU27COHPpwqo7sdRK3nOKdeEpZ1yitonr2Q/52+daldTM8pMFddxGYglsUGVNAPWa2Rqp/HcLny/7rfpICrVLZR3SH8QHUAu3J2Vt39x+SQljBUqLKa9oQTydGMVaCV1Mldu3zPlRLF5E6p9Na+k2zAHNNs+gK+nYp+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X364Uwmwg0ZAcgNoP2Sq44nPn+i7GGRUeOrF+ipK3Pk=;
 b=OWECi2+9eYWPvFMM0EpC3fwggHSyPxuC+/7TSv+074mCyiO7+O7L84+V34KpBKHXsF32t198NkPQKHdsf95zsn6LbKWBSJZTbFD6Hrroc0UDi6wsXCC6I4Xj1PhuNHU6ZVl8vI83AO3C2AiYYvDlXXgLZonIuwhcAaWEnxAHsyYk8bUlD4iCJ8GiZz7rbvucq7xez84CeNUV9dZXD9v2aWeZD19vGGbNujbXnV2TGI29p33bA7715ZHaVcGvUY0EYcSTtoW1iLoY8Eq/GIvRwG4GJtoqYRlUbVks5EIZd74VoiaHdjTPXTYmAvDQhYLjGo2u5KATozDUFHMpXyFSxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW3PR11MB4524.namprd11.prod.outlook.com
 (2603:10b6:303:2c::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 02:57:37 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Tue, 10 Mar 2026
 02:57:37 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 01/24] drm/i915/lt_phy: Dump missing PLL state
 parameters
Thread-Topic: [PATCH v2 01/24] drm/i915/lt_phy: Dump missing PLL state
 parameters
Thread-Index: AQHcq9jia6Cftk8qsEKImB5QN+eP/LWnG2sw
Date: Tue, 10 Mar 2026 02:57:36 +0000
Message-ID: <DM3PPF208195D8DA6BCC16F8C42ABCAE60FE346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-2-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-2-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW3PR11MB4524:EE_
x-ms-office365-filtering-correlation-id: f6257a09-7947-474c-3d90-08de7e50c922
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: +1xBikXAn95dYk/dXmuPouda/NYsanCWBdyQF/ulc7joLFCMGVHyBJpBZbno4TNZPHVCtpIzYtTXuJBbqxYDYMfLZeWhyocoFSa4fkOSEXR2y3vz5iykbhOFjCP4LepRAhnOxbKs6zZe8gIn0g2jmuc8EOLB7w0Yn4tr0nGe73Z2IXfsLPl6dQmkgKZ7s8Uc6tmifru+xhpUrgL90MBX/ue1J4fQJT1GntPlfqWKEMR4HG6lqJFzkmsjCYa1Wv2QEzB0S6JS790gVGpPrtiUhpm2ff4q6DoD10mCfPEyq1jRaI6CSrmW40gEmNdcBUBSYGe9A+EZxiFboTzAibD3Qr73b1XtH5lAl82NSkBlYpyolPVJxM/yDNggP35YPVMRe1YNmvrfYO+zj/NZjRd4+8NNQC65lzkSx+V+5cxm8fB7HQYIS/3T+/3Ubbb8/YNaSbuTBJFI0DY0nWAxfE9GBOkigzKhdTGOK6Ruw4SNB/wA1gmD9/NEO4EanP2LMWAt2LSPIg2PlISklfxU9jb4ox8VewgA5cluQmuKCBJZVJO3SNKb26YO2Xea8b3p2xTngaWVpQFbbyJFchsFlywIv0r0npHK66Yo+piU/VpErt7Wpbu82HsrByV7nS8QVZxAoRuwMy3yHCcbpk93GemV27Z/jIrF7t5+eVGYMPTiM7eMx6/mAYM97w6fyfTe4p17DkGPnYreShZlDtcga537ZGwyyo+npmetSwAFE+BDYpUDeagO690lMyqTrFmLkMuReeZqIHx5sWTd8qfnTsHsVAXbVwXNnTEXGXkmArNKqYw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?U4ADG8/5b02hAf2NTTxor8H1M3JuH2l0Z6V9qH5fmCbrbwFnGyZ97es4gicC?=
 =?us-ascii?Q?x09xjglnw9jd9YBElZu2GHFfEx+gi+Q2aowmOgOcwia8lZNKu99EXDLDYFHM?=
 =?us-ascii?Q?0o4St/dIt/UQCDBsCoqgheJJ3NBg4yQYY7qbkXV2YaQkvy2HDMs61hhJoItO?=
 =?us-ascii?Q?UASpyBUBdUJmcgDf/VJ8lx0KF8Qtms/UL5kq3hfurAVo/M1XP7CtJ8awDYML?=
 =?us-ascii?Q?xTPEi5neNL58ZMfvZ/InAYRMW/DG4OkKTLaigGxtNYiSTdkT6h8/iLXCfT84?=
 =?us-ascii?Q?BhClM0AYfThytMn5gYaVnPGeThL27eio9rk0tyZqLIXQsKPUjb7bQIrFmAxL?=
 =?us-ascii?Q?nCipncPI0cZOo3+GX5UFw6pVurpnJXlHW+RkE16sEEDP2BmGex9FYXlwFl2s?=
 =?us-ascii?Q?N8rTNv4HDVjNraR5DJ6zL98csS5wGMYV0QiFyzU5doSZBB5KGww0Dxzg3UZw?=
 =?us-ascii?Q?yhAEDn3lP+mpj9nkkmUJEHfmYoda0ZnSH8wKv4w0gLTTIrrCdfcVq2w3HIu1?=
 =?us-ascii?Q?wuqdvfY1iSz2lBP6tdeDzufTMJqLrJETtK4ICl6o1/H6LgxtLyfZBMkE1JrX?=
 =?us-ascii?Q?iKePfX2ptsOrF0iLko4RKF20V5cCIUvvnaGXi0uB7x3X6CEAsElO73yMMyHA?=
 =?us-ascii?Q?0RGcrhRuK8b9lKcRH9+ZattjhXol+U2JSVB+tdFpzxFlpqWem0nnV1dqELzs?=
 =?us-ascii?Q?l6mqLBfD/pUXSZGQXzcTWfrZZKrT95EZwOOFH04x/2GG/BcQnKMN52rl3uj8?=
 =?us-ascii?Q?rC6IBE2IrIgM8WzfjBQ5Imbbq/wn+cOAN9jAD/U2uYHYxH1462vX9Je6JdjG?=
 =?us-ascii?Q?OQ2/ylBslDHtjDUC6JE/rW4I7Q+7jSBgh3a1FZDz4rYUqgj3uGT8VNv+ur+M?=
 =?us-ascii?Q?6aPYbgpTWCTohFkFMK4QDVTQ9jj6y+Mk6mljcUbkz9RUN6MCKZqU6zKko202?=
 =?us-ascii?Q?F/3R9vNd6aQABepcI+rC1EJ3FBBlNyadUd/TIhv5oCTaWqEoTITRic0zjwE2?=
 =?us-ascii?Q?natuP6/N6GQvTEdIpnhfk8D0PwKbClW80hNoCsKjo6U4cfplq1eF2ctHSAH+?=
 =?us-ascii?Q?JjW65UDHbX8t5kT/j1OCT4VpYoKkchAJxpiFkRHBBLhBix70w8AGYsxil0z5?=
 =?us-ascii?Q?pqLKRxTeM4Mrrl16Y2ryFO85p9Lup6vsPyBZrQ3/gPG1mwPLKmnVjIESijjE?=
 =?us-ascii?Q?ypo/y4Rh5/5kXknU1GaainLalznkQtJcTFdoBrGxAqZaht5naPptUxIVaQit?=
 =?us-ascii?Q?DWTQm8JQqPz/HQC11sojNoMzv1LLa50pGnPIGE1TJ0/QO9ZdhxUrle8DJZTt?=
 =?us-ascii?Q?gma8B1gdXlt2VYZ1/BYQD+Pyl8dzAjp3dkbAOsj03pbFDRBuQ6EIcIfDs6Ok?=
 =?us-ascii?Q?J6v0M6ZxdVoUSDX1jua0/j9HZ2ZMB2r4XsATyNtEqf6TKjsnNn0Xo91HnDQO?=
 =?us-ascii?Q?8yw5Ua+Ve5ht0PT1MqlUH5WOm1RRBhL4hZXeb/NP5Lld45uq0TjzYOf580+G?=
 =?us-ascii?Q?YL6kKtRBgw8ZLznqTrud7377CrI+N2S7+fMRA4DyJ8qXd7YcEqZGafatXQqo?=
 =?us-ascii?Q?qfKJGjhy6IZcl3AANbIAnQSAFWYn+IaWl6FaythBxFet6dr0N/dfxQrah4ry?=
 =?us-ascii?Q?UdYidqfl5fRYBQtgIqkuvG87AOGSrAz0Mvr+D3z9EkeMmIIZAR3gNOY8Z4Xf?=
 =?us-ascii?Q?4TdO9GUmxjMqKX8to4H7hD/ImMKNUzYh/trCAYtR3I0fRbb+tOCiulacLuka?=
 =?us-ascii?Q?4eQmwkDPxw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: khyiNMtPQ1W0dx/sIq/ZJ24NW9Nk/1pBFsMNrYVpvc/27LMy5L2+8zH/S5AxCpYL5Rhy6MEZ/+d7q6RsMwnBrO94xWCAthGnIvYyUf/RVWLJ41jnGkp49Be8usc9bUgGKXiN6KpjwJHLvwzQQ8+TNBxzrwhP80qYhkYhhisPuHiDeF7bygL8x4m+B9ex9eu0iflrvY4k1tqT8+y1GV7jjcdq4p/b7Ssuja3RqK2Z/jdJXXn/InThoY7Od/MOYXE4imLljdrHwedTiKKpZt0iyw719BdKmOGdyfohnx2ur8gk4Lggf1jmWYlSRPbSnxxqt/NImcg9r5U93WW/kTEf0Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6257a09-7947-474c-3d90-08de7e50c922
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 02:57:36.9911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4slbLp1d6UKp/yOeK3cJ/nDGYDMMdIVKUuNfg+Yp4BP70+aZIW7BX45Hn83iOtCgvEuBgWPmc0m6yzVIjBCUSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4524
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
X-Rspamd-Queue-Id: DD6B9244834
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 01/24] drm/i915/lt_phy: Dump missing PLL state
> parameters
>=20
> Dump missing PLL structure members ssc_enabled and tbt_mode in order to
> enhance debugging.
>=20
> v2: Drop addr_lsb and addr_msb printouts
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by : Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index eced8493e566..f768804122c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2141,7 +2141,9 @@ void intel_lt_phy_dump_hw_state(struct
> intel_display *display,  {
>  	int i, j;
>=20
> -	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state:\n");
> +	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state: ssc enabled: %d,
> tbt mode: %d\n",
> +		    hw_state->ssc_enabled, hw_state->tbt_mode);
> +
>  	for (i =3D 0; i < 3; i++) {
>  		drm_dbg_kms(display->drm, "config[%d] =3D 0x%.4x,\n",
>  			    i, hw_state->config[i]);
> --
> 2.43.0

