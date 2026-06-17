Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CSBPKfZyMmqS0AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:12:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159FD69852A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:12:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=NjNKHn51;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB9210EF25;
	Wed, 17 Jun 2026 10:12:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7588B10EF25;
 Wed, 17 Jun 2026 10:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781691124; x=1813227124;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/XFpUFYzQhOOwfDfhUdVWHChY9YVkm0gVi8jGTVbCtg=;
 b=NjNKHn51SBs6UfRqs2ETKageFn2r6GVjg5jd4l3BVApfTiISLUW4X1CW
 LmBu1R64tD2F5dInoXs7+Yn21yJ+FLFv0586air+OoO4YIgbxMC4doTkB
 TpTlu19cXOTQLdbuhYmXYwrEG/5vcZBBq4v8PtqdImTryNemXVJWe05AB
 ytn3r0fha+/2ht5IZMlkJW8+ZsEmD2M4atbXjgYVxiOd36NpTqQjv+HLQ
 4jpweRYRrz1Ucb3OLxz0Itiym/ufSuKClelXSp+ysvTAMKhI1zDWjYUR0
 RooWsThwNU0pCXVzD5OxPcdUJd49F0FnO7SS+PzsAzPWFKmU/UVmrjwR3 w==;
X-CSE-ConnectionGUID: SiUH3OfCQJqHI7EPN+2PoA==
X-CSE-MsgGUID: GSRDeB9QQByATlh3kRMRtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93592821"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93592821"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 03:12:04 -0700
X-CSE-ConnectionGUID: BfTnlH/eRTqoRPzGTqwj5w==
X-CSE-MsgGUID: p7lKKni1RPuc3qQxptMZQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="286142262"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 03:12:03 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 03:12:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 03:12:02 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.57) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 03:12:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YN0Ddt3Hp/hp4beCFIhxr1i+riyRVQBNC9u2gPZSorQjvx+d/KfaqUCAdIGZtthe+Fus7lzVjM0KVxaTd4LJuxn91vHxvUc1859QjwelmyBdGtbwczO2INlqiFnDulpZwzCNrUIklj+25vjhPo/l/70XHokepAziGa30UJlHXD3YVWR3tVpjmwv4diSEoe7crJTLp+Pf7O1AcpvO954Z5VSpVu3vScdZuLSipe127G9dtIpE6kNfwG8/QMxc+aVyuOd6Jt3meAG3P0RJD2bnKGoGSqtyApTh8KX/wLAKfWYih8shLInB/LN4XMT71U9SoYsR60k5lk9RX+mfDCFwfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VqRWEtTwGiL/WB9e9uO/JOqbb6+xc8oXA1w8WQ3wYQ4=;
 b=GcuRfl4iUF5EbvtSI9X08UlhYAsYpIkyhoFRdVajgn1+piS+2Vu2djYVDJ10RTLqxpNLCT2NJvtXrq+QdEMA3nnMxPU6xNnOhko/IGeCESbTuSfuRxeh4yBvU8Gz2te7HzoDEjBS31+e8M7GnqA2abFVHsvEqSJhBt3bFjJp7AdsDydFSlTbexyYSCVL8QrdMs0aMk2Ju7+8YuT7QRpuayIzce3ybPXD+LL82iVsPnzCtmqioDsHtYo2J+cpXw/AhVEjv7AlzHlvlR+U8XlfYSAMCnept//Um0r17vSrMHdFxSDpqv6yazfRgMO4exrQG6qsFHUw1PgItIb0Wt0bZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH3PPF10FBEE80C.namprd11.prod.outlook.com (2603:10b6:518:1::d09) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Wed, 17 Jun
 2026 10:12:00 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 10:12:00 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 15/16] drm/i915/display: Guard CMTG function calls
Thread-Topic: [PATCH v6 15/16] drm/i915/display: Guard CMTG function calls
Thread-Index: AQHc/ayBUKiajQ3yDUGs8nji4/TVPLZCh88Q
Date: Wed, 17 Jun 2026 10:12:00 +0000
Message-ID: <DS0PR11MB804982102B0B937A83602D08F9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-16-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-16-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH3PPF10FBEE80C:EE_
x-ms-office365-filtering-correlation-id: 343f4d44-4f99-416c-5069-08decc58dee7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|18002099003|22082099003|38070700021|4143699003|11063799006|56012099006|6133799003;
x-microsoft-antispam-message-info: 8oz+CmY9wnB8/KDmp81iZa/hFhaeG3LYxLxlMhimpdsgO+T0f5dQAUa2dEXHCKaeBjWdhkIhcfD1v8mJ+JJna8ToDjRXk+3zYtGyAEiU3R3ay3noyPvYUGmO1oJsaPFnk96JCnN6rk117mZGxSPgtJTunXl5kMhQ/5z2BkEE7B40L8EoCgI/7/MA2KYwsiUmw14rk3LjL4807DjZmA38XC2WSPjP63HQrq0Sb1hbkRi/6AgGtX/VCUy80tlHimnrN2n7G+3eFBCucYByTPEokOJakzrShlhClIlliIZfa5mz2wMYTB8IbretiUVSl4wxKGm38fQE/2S5Qih7MEOmPxq1aobgzCjaI/UoWiwQ87ToNtZrpyZaVOfaAtst2ZBzJyia9zfUIZAXWO9fcZVfZlGDcO1R6Xzc2CiS3Mboisekk2vDwFWEc052FU77+XbIIW0wZfZZrSeKy4CoikL0d9wnbzQOdo0qgKZAUaQcbarSiq5Q4gJX51/TGiIyq4NVZHwZ9flIcCbTlsJZ93x+cZ/92DJm4garezvK507EOjGXr4gy15LjkOxy2c2/Qe3B4AEByYKZqX6r8KLvRSTBJT7MfF7Sh1Oy7F6p7FBN8bfMaIZD28mpRXPMgOmCEhbxM4eugDyJvFd66E64ape6dpzDzf6KaZUkrGOqppgisZkomBVP3Re9DP2rXfrbq2SPDITgUHPNOQXlF0dydFpPNyW2QbMuoStZDzwdWpRmSz13/Cm1U6R4KSClIQAGnAWl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(18002099003)(22082099003)(38070700021)(4143699003)(11063799006)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jgo1S7Kn0bQJpH72P3QOAYgmEfry7+EeCjXHgL28DICTLp7yD/4sDM+UzhMp?=
 =?us-ascii?Q?FldsvHQl1ERl4l9WiZ9jhBZ9MsBuoR+Ux2tklM8iL4QgOdPER9eZobNK4juS?=
 =?us-ascii?Q?zK8QAUCE0Q5X7UAAvKaBnROEkpcVJXIbyTABhe4vB3iS/Ol49JJB0icXl4pv?=
 =?us-ascii?Q?C+Jm6NmI5EbtWhZUIjadfUc9+9Zjn3bmaSVRgh/G3UJT5HWFcPjfSRXUb6Xq?=
 =?us-ascii?Q?fRw5ljVYRubQO9zHrfxTuyZHnqg4S93gAyNz8JOjxwTCKFFoHgnii+8DlGAg?=
 =?us-ascii?Q?nekXunndAo7ZCkmcUgYSUI0FfqOn5fE0/4g0zt5IcbFYgrkJvfOsZrbwA70p?=
 =?us-ascii?Q?sOgfUdmPMBBVn4UJ0jkdxyK9f4JTLh6qc5tstpRe77kihNfimK+k4vDTVkte?=
 =?us-ascii?Q?VzxXT3s3ffj1FdfWxNeJsA4PGyrjVobkzWbrXqEzwJPqql1gUTeabZumlhql?=
 =?us-ascii?Q?pF39boRaT/OUi3T6NJLUCjKvFSvqLUOlCest/U/zmhhF4EL4Mw4rhZIjCitx?=
 =?us-ascii?Q?zNMwORwJrGHouVt9BXUuarMajGrvhhZfpMfYUrXgouR3BM4LnsjU/rp2uatW?=
 =?us-ascii?Q?NGt9+EaMfhahKg+NO5o5ySJIFE/jCCJ0zfIaLho4Xy321EJpvUU3dSBV9T4a?=
 =?us-ascii?Q?adcccUlkmxW3wSz7FSZ4Oo7Ngwz5PXNoSH+mc3NCGVxA8j3Bi/vXD6hBhsok?=
 =?us-ascii?Q?755PRCklk6vBYbFwMxzJdcKPreRrg/MRkmBilELv266Z4JfxpuA3oJT5wvQk?=
 =?us-ascii?Q?vPCEQKTgabgHBoi9LIX9owPbC2J6P4rhPe1KTR77QQ1BOzmoFHRCxQz20yDm?=
 =?us-ascii?Q?aYyXL0hLmr/Ki/1f2/qxVN0DCxOlUPTBxJ35QV79JtH73YCwnScgZ3/Esd8e?=
 =?us-ascii?Q?mpxgxDByQerNPj53e64AT7v62tvPv8WxWwh8o9/hpk3a06Oblxm2Eenmf4ws?=
 =?us-ascii?Q?W5EMoN846brrfE/X5tV62Gbxasz3fy4IXlOJJSzOrLHEwyB/QM514Uh+ucXo?=
 =?us-ascii?Q?mlf6rtNpvI184BI0bNhzTQG3FZaMgtPnUFjNLA8unCLK8HX0giUIPseTnKwG?=
 =?us-ascii?Q?BpcZEJDD/YguHX/O7+7GzVqx7nghdxhfZUTl32d8oD7U3Ye/7CN5mX1hOkIS?=
 =?us-ascii?Q?vCb617EYwQgxiqXqTh4RjAoBcLvZwZLpp0vHEUKOQ55QN7KW2lq6WRyUP47a?=
 =?us-ascii?Q?rpr/CkZNb3N068adNLqzYllBRDLBagIqTFUnXol6RdVDkcenyATdV9nd6etR?=
 =?us-ascii?Q?iI6fDLLOVqjbBjL8qu/e7IxCSiPQDqjrW+Zsb/9/C87eGRtCnjg3LCrbW4s+?=
 =?us-ascii?Q?engwhGASfM71gMSWdxnY8VoWs8hcl49Tk+aEk1UVrN0aOi1yhPAUvHH/LBno?=
 =?us-ascii?Q?vD3thM0MobR0mIUsSGraG9bFYXjSa+ht34W23IdrzPW2guNVZltsE7w6YNpW?=
 =?us-ascii?Q?b4vTM6MfSroZTYGzM669YlCunBI6ScuiiwVfZgPP94vjm3OrjK8DDpXyL69a?=
 =?us-ascii?Q?r6INxmTynI9sPQ2Vy1yQRQxbdGJ16MqfuGflLcmkEAEgxM22ZJoWZcnly8UP?=
 =?us-ascii?Q?PykbkBkrw1JB/ydcTDF/CPHqB+H1tO7858iBwGGN5o8ppD73ORK3neb8EEmo?=
 =?us-ascii?Q?VXuRl+qWnWXaUCsbLiQqgKRrtXq3GvJNvR+EtX5YtYtQwy2+j5m+dLhd2bk2?=
 =?us-ascii?Q?+yxImt6mRYl10dOJBOXLeo70qgFZ4zEnBwvjj8CjswasJ7s23SHMGPpNO8et?=
 =?us-ascii?Q?zOQKH8E/nA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: SbxZV7RfPXElzxwE+tPCx7AlvpTeis9N9V6geFTDG+BWCpcKYf9JiDKCcDDWLfN3imyzSlHuHWEAsPbaSanz0Agfzk69y5YFBv6nQ9AsT66f9WPdbxtzf2yZASORAFlYb4dUXIr0Q1nF4jgPXGGKn2ALykl2TFat9eaUbOdP/4QUNyaaFC5V4YAJl2jekbqUblkETItwGBmynxg7hWmf/vAgzlSLNCtKtUazzBtZA9t1qC73uI9RMub6E80GXZedxywc629it5YIcVFZdt3f0fwVrtHKY8g/JzLNo150xGII9LbsrsGSF39AB/R4qDevqU0tZyAzjDByggZ5AiBfpw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 343f4d44-4f99-416c-5069-08decc58dee7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 10:12:00.1442 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j3xU5IvqlUhZPpwI1vQFsWE9NYqcy8pLVALz0emKzgeWtum3IRcttao+p/7e7SxJA8UqwiFfk7rwRiq6HSmpbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF10FBEE80C
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 159FD69852A



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 15/16] drm/i915/display: Guard CMTG function calls
>=20
> Check if DC3CO is allowed before calling CMTG functions in
> intel_atomic_commit_tail() as CMTG is only used by DC3CO DC state.
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index ddcf2d2054b7..3b17ce669ac5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7579,10 +7579,8 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  	/* FIXME probably need to sequence this properly */
>  	intel_program_dpkgc_latency(state);
>=20
> -	/*
> -	 * TODO: DC3co entry condition need to be checked before calling
> CMTG functions.
> -	 */
> -	intel_cmtg_program(state);
> +	if (intel_display_power_dc3co_allowed(display))
> +		intel_cmtg_program(state);
>=20
>  	intel_wait_for_vblank_workers(state);
>=20
> --
> 2.43.0

