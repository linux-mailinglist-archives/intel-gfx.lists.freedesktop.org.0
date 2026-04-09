Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEjtNcwY2GkfXggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 23:23:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 339AE3CFE63
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 23:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB6A610E084;
	Thu,  9 Apr 2026 21:23:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HMbfLrd0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36C110E084
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 21:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775769802; x=1807305802;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w5xqq5UnJ8XsH0MTO1KryUZ4w15TMnYEmJ5Ork37Xw8=;
 b=HMbfLrd0BnubejRQpYfxqRCZhw0cABDcN+niALaP842zqFA/pNVMHr7V
 n7rp9/V2xbC+3C+S+ba2URXMV7bHQY84CjqI7HqAtr1e0pV00zxpEz0Yj
 AAvVthRflsmVUUnHRUWsvmrsrYvfOKH+eFhS6M/rIBvjOcANhbx7jPRZW
 KIXDC5yi7Jf7Wek68ErRJhlVmHAwi7q4MgjQAPsf6yeUdsRHlELtAaPEB
 ydWTdFNUudy6FPkZpagYu0kh1tPeGIlrKxay5wVPtCYq5PP2syNjqZ/c7
 gUPRqpIcC9G5t3b+e/CC2SxEKMS8haCCXpHwkz0jh2A8GXouTqytDMTXX g==;
X-CSE-ConnectionGUID: ph3CpLOeS6+21gsKULkhpg==
X-CSE-MsgGUID: IDYmgOqXTQ2dLiXIHSApAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="76695603"
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="76695603"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 14:23:22 -0700
X-CSE-ConnectionGUID: kfzpgzI2SluraI6wuzm6vQ==
X-CSE-MsgGUID: pMgbRBPQRfa7sLuMF09WXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="232966784"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 14:23:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 14:23:20 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 14:23:20 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 14:23:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xc/fghJg6WNwq0rJZkOMQl/4ya3GScw4khtumR396KeGv8iy3L3u0izffU5pCVZirPQG4g15ytUdPtYVBcJdjNvySXCwKupFWohlHS/4lEyxBEo2caaUJNZkFI+fhM+RiCbIwIb1p6HRHfc8XSdj+TLOlTdtFwPN/6JGN0f91UqQyspg1avBwekD3gr+qLf7VBLcS+q3pzcjp+PXFv8XV0NFj1430izFIQJYHkvWLUUjr8H0Hiuc86PzVZ5BFPT3zHF7rEDyf91EU5l7P0YXH+CEx5Mtyy1RvuUUmFQQ0dXgkd/uf2nffeE67WhzoWWjH6Q5oiQQiLz18lLjXZIUzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=reopb4BL4YZsICT7sxu6LNEKh5rSMLS23lqDA7X9K7k=;
 b=Ls+JLNVjWvZAQzdTUdkLUEMAyH/kjEPOxNgAfs2yUrGgNe3PC++DMVFLMtdaflRlN8O5GeQqaLVtfx3p4WXrwN4p+xLvGm/yOLIKHiP0S8TaYl+Si9lsmQdmaCLpvMovtiwsUgHJ31qWcem37WMdksO4flasniPmcPR65Ql9uQZzKXK6Az9DmeUCIyBANYeeQgwdgSI3yR5hSR1EVD0uZP+H8IlEJV2hrtJmV13LVRcfRFYuCXorfCqbAyukcQLa/Sh6qMo4XYuFnDl2LmqxqEX8cY2FK/mLhzYkuoVbrt2ZJJr5Y3Hu/bqUM00BuTHJlF6ZJ9Rbsub5jG/9XE/0JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SJ5PPF33E90C8BE.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::81f) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Thu, 9 Apr
 2026 21:23:17 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%4]) with mapi id 15.20.9769.041; Thu, 9 Apr 2026
 21:23:17 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>
Subject: RE: [PATCH] drm/i915/display: Check some INVALID_TRANSCODER cases
Thread-Topic: [PATCH] drm/i915/display: Check some INVALID_TRANSCODER cases
Thread-Index: AQHcyGPjmm21HRe7EkOmODx3Y54s3rXXOhqAgAACuwA=
Date: Thu, 9 Apr 2026 21:23:16 +0000
Message-ID: <CH0PR11MB5444FC05440192178226B75EE5582@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20260409210001.64901-2-jonathan.cavitt@intel.com>
 <adgWBSCegY8YvRxV@intel.com>
In-Reply-To: <adgWBSCegY8YvRxV@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SJ5PPF33E90C8BE:EE_
x-ms-office365-filtering-correlation-id: ed430bf6-459e-42c0-4c2e-08de967e3709
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|38070700021|18002099003|56012099003;
x-microsoft-antispam-message-info: 775Vne3Uth0gOkJqUoDO7akI9KbfByK6+RaMyKM8vvEUvfNK6bcYgIO4n4wc64YZaWbciluMequB81Zzo3zPcWkzLEWy/lsBbwhOQHiWhg8MjTnJvLqnuG5Sl7N+neHLkMx0feiTiLZyM2XTiCwxI57YrGmDa0zb2FxsIs7J+GbGGv28KXfilzXNh2LitKaCmr0514Xh1whTl8Xg3UQkrWjVfJsgBLrjqcGaZ6g5W+Ee6TzfnNskXck1sSwuux7ZJ3l+E/toh2ouz2hSBI0XqwaxWLa0Lgk5Z2E8G9al3S3eNwNWZkKXKxHwUCLdFICotA2ngXQ8WNU+I5NtjiLuCcnZpF0BRe2WFh7OyN8QFC2mewt/H1xQPv596T0aWZaamey2FEiMhnczGmd462CNpS3eSbsbUGjHkHHdTrNQw2ZM31lsXB4CXTvwTnJezuuSpev5Q7fl8WjUj7GcE1Q0cS7NvwfQLy27+iFbEdiTkx2xtsq924Bbw/sxHahiUyHFYbtH1hVUlLFvr6WCCdR67Ltb05RHSdP1EHytcMdC+ehEgXWWrIJ+bkw6F+rKgX1iRYwoeoFlMODwtcAEFi5FZ8toVNzP7rxow7F4BYxrPUfJR6NrqcML9VmaOLLnEPnJb4VEdbzkCPlNTzBnL6kCT/My3UWjjx1LKOgSuJik9PYiKcWKkS6urVJdF3jhk8GSB0W+5otXFsW83gEUD9ZbgDIktaN5Kcmqaw2YgcgYfj8yG03Qv0ReiAL/YTvBQ2eypp5c86KGFA7ounSBNXWDJw+KeZmY4mI9FMNvOCVmp28=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(38070700021)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?PF6AQsmtoRKgHOnKSEQNO+kOgDQVY1iWPlVp/GpA06Mue3sbfr1M1MmZd0?=
 =?iso-8859-1?Q?pTLp+EJwuACdaSZksU5/0rQL5aou29umMmqszXQd7dCOkiiR2fJx4l0fqg?=
 =?iso-8859-1?Q?5BfEbW8H5Hw8YFolfyE+AZWLh7k4/qoTBuFmFSPkBLqYy/sAezWbpTO+oV?=
 =?iso-8859-1?Q?L2UZ85O933IIUtK5ZDTrJIsen+WKzCvgAm2rICLYouyD7CrBUeTgZX9e+g?=
 =?iso-8859-1?Q?FdOpER6krMyZ4Y2RXDQTIdOieSmuiv8QJQGPIEHWuoZNY8nCxb2u1gjHow?=
 =?iso-8859-1?Q?tROuHNn3Go9yMYqpDMap/aUN2ELgcbclJ5M9yvV5XHjg1wQHibWW4fV/fS?=
 =?iso-8859-1?Q?GSSHKXc/Si9Bh6QDrjGoagUO3kqCsogV9WIT7olzZd72+1lG3RcjU6Vx4T?=
 =?iso-8859-1?Q?AytSYrAO5rBCTzpOAC3diyZpbjLIukFyg/gJuGKVvqpWVfKTMpmHcD4sGU?=
 =?iso-8859-1?Q?JIPKtLg8pavHxrT5Xq45vSAt+DvXVP1tnT5ppifYVF7vMq3HUtiv+QfEgd?=
 =?iso-8859-1?Q?KHK5GJBPWu9mloyIZsMXvf3NPCasihPGvoSBuR3yof6Z8hesugpfNZe48o?=
 =?iso-8859-1?Q?ihU8pdBE7Kn6zST3lifup6dBx/jQl4iXsghLWDCeCQtPLGpgEHjF4yuBZ2?=
 =?iso-8859-1?Q?bn9z86EZgXiBXhgEtNnwKc2Zc8ewpLu3iz8o4DO01w5O6JaezjJEMxA3tv?=
 =?iso-8859-1?Q?NUWqomAvb/RPvLMO0z1ka06/1xSDqyl0bcQpn4yaCT4wMAFfmhelnvhLxZ?=
 =?iso-8859-1?Q?STNBh0WGH4g8VjCbnfIrxgXXgKHNzPLYaVX7n5Yrrq6H+HQGypXIL/mY3f?=
 =?iso-8859-1?Q?AREfmb8lRSR12Lwqcz7Oh0SFhNrUno/MTepotqW54t7RANYo7Jznnma3OB?=
 =?iso-8859-1?Q?1k2BglbImUtVNCzZmW6rs2q+Uhx/uoVvNiXLygP2Ma6DuEE5DI92/0ZHmc?=
 =?iso-8859-1?Q?dQR3HUlz84p3Xak1CQqu6T3yIBI9huR31wRDB1BDQioRIbZLsf3rrnw/hg?=
 =?iso-8859-1?Q?LHATuGI3ycUDO9sXgvLOK/MMiMFgiR+eRo8YQLGOYJ3S+F7BSFi/wsG5Ph?=
 =?iso-8859-1?Q?YASu92ZG/kERdcJiEtsi/Q8knzDURmJ5+7RuqFuY9+yCIboIDNqBKI9Z0V?=
 =?iso-8859-1?Q?gjvOoecdRTIjd55LwBQDziEmL12wl7t7Dmq4UD0Ow9XlAPIyxjvfFcKf5b?=
 =?iso-8859-1?Q?wuEtmlte0rpYsD3mhEf//ZEkQ26RzdSASaFmKQgC8qzgTuWoJmLKA/AzMz?=
 =?iso-8859-1?Q?h9gbVGp97ot7sKc5P6AJTekmgrkC9KdPqcW3lF2FQ7bjxd+ZxgbNXlXrNP?=
 =?iso-8859-1?Q?edmgvLip+9SqaZYCw4ng7lU0VlgayNM6QAKo173lo4S0brEgkunUU5BARr?=
 =?iso-8859-1?Q?TW4uPMLhcy1aTeeHJk5gXgiJsNIDQvzsaHERK4DP3IPUIFxpW6L+GlIA9P?=
 =?iso-8859-1?Q?4Y/YEXfIv8KxfTcVMg7Fm/fasogrRwc0wBWB0up9Krh30szt8/baiGXtwF?=
 =?iso-8859-1?Q?FshftiX4b+eEFg6ndyPl9uLYMDTOwYqQmQREsdvjLkVLNIoCZRv30Ydoea?=
 =?iso-8859-1?Q?DCeNeLYQ4qTD+kXDrCcWTv1Nh9C0t/zK8220IKhba2VB+BKrDEJHHew8Pq?=
 =?iso-8859-1?Q?MbzqidPaVz+z8iNkKRKlMbBUfLGDQb6BLWPAPewoI3IeDvRl/WXiVizFAd?=
 =?iso-8859-1?Q?bjUz7+MgQIX8jSREnYLyhPdlCrfCodw8ZC1cw0P0ZpAhL9umx5064pJIGN?=
 =?iso-8859-1?Q?tHwe1oo7eV6mpKWzuhSvogQNHN5YOo7rxxu0lVH8rj90lnc3SYqRpmq7RJ?=
 =?iso-8859-1?Q?KPrsd1NRlQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rzrJDtbxd/8paL/b5d7J5r8sq4z7KcbYuKNfaTQk7bnVJvRusP3mLOCnjotAsNj1BjWNsvcwE0a0Vs531H7XxzCUCMDFYG2upXyaEEiGTgSDP7BhO/WHOkmEMPVXywQomvyh/RppMrONWR8jQPghc9RVB0m04AYPJlnNWy/fBwE1R6GeSE3IrjKgmS8kSDZaYty5HfqSBYpyau5zSTlcmnLidaaaGdV8FKNXZ4PWsr3XpVxrum8OlQJm6/PcjCZWIU6XhZjmbtf0VR0u3LTE5GhEFRU6GLPwtUmf5nYJYy+uSzy3IP85D6aAdB6mS9LMDQ0rd6vrHVBcV+Mkxk4wbg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed430bf6-459e-42c0-4c2e-08de967e3709
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 21:23:16.5990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3DwuILeBEzozKfz+GBmkXIIDqkioO+ActMoFm18xf5s584KhakIsJyinUIwCVs0H167fX2qt074xdZXAf5gFEAK9FO4/9Scly/I+BRQzGSc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF33E90C8BE
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,CH0PR11MB5444.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 339AE3CFE63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>=20
Sent: Thursday, April 9, 2026 2:12 PM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org; Gupta, Saurabhg <saurabhg.gupta@intel.=
com>; Zuo, Alex <alex.zuo@intel.com>
Subject: Re: [PATCH] drm/i915/display: Check some INVALID_TRANSCODER cases
>=20
> On Thu, Apr 09, 2026 at 09:00:02PM +0000, Jonathan Cavitt wrote:
> > There are some cases in intel_ddi.c, such as in intel_ddi_is_audio_enab=
led
> > and intel_ddi_compute_config_late, where we attempt to perform a BIT
> > shift using a passed transcoder enum value.  This value may be -1,
> > INVALID_TRANSCODER, which can result in undefined behavior if this
> > occurs.
> >=20
> > In the former case, we can simply return false if this is the transcode=
r
> > passed (as audio is not enabled on an invalid transcoder).
> >=20
> > In the latter case, the likely expected behavior is to set the
> > crtc_state->sync_mode_slaves_mask to zero, so just do that directly and
> > avoid a risky bit shift.
> >=20
> > The likelihood of either case occurring during normal execution is
> > unknown and possibly very low.  Regardless, this covers a static analyi=
s
> > issue.
> >=20
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index 178074316a2c..7abeb60779e5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3875,7 +3875,8 @@ static void intel_ddi_set_idle_link_train(struct =
intel_dp *intel_dp,
> >  static bool intel_ddi_is_audio_enabled(struct intel_display *display,
> >  				       enum transcoder cpu_transcoder)
> >  {
> > -	if (cpu_transcoder =3D=3D TRANSCODER_EDP)
> > +	if (cpu_transcoder =3D=3D TRANSCODER_EDP ||
> > +	    cpu_transcoder =3D=3D INVALID_TRANSCODER)
> >  		return false;
> > =20
> >  	if (!intel_display_power_is_enabled(display, POWER_DOMAIN_AUDIO_MMIO)=
)
> > @@ -4637,8 +4638,13 @@ static int intel_ddi_compute_config_late(struct =
intel_encoder *encoder,
> > =20
> >  	if (crtc_state->master_transcoder =3D=3D crtc_state->cpu_transcoder) =
{
> >  		crtc_state->master_transcoder =3D INVALID_TRANSCODER;
> > -		crtc_state->sync_mode_slaves_mask =3D
> > -			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
> > +		if (crtc_state->cpu_transcoder =3D=3D INVALID_TRANSCODER ||
> > +		    !port_sync_transcoders)
> > +			crtc_state->sync_mode_slaves_mask =3D 0;
> > +		else
> > +
> > +			crtc_state->sync_mode_slaves_mask =3D
> > +				port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
>=20
> Making the code convoluted just to satisfy some dumb static
> analysis tool is not great.
>=20
> If we really need to care about this crap then I think it'd be better
> to introduce some kind of intel_transcoder_mask() function that
> explicitly deals with INVALID_TRANSCODER.

If the issue is with this specific segment, then would this be better?
"""
        if (crtc_state->master_transcoder =3D=3D crtc_state->cpu_transcoder=
) {
                if (crtc_state->master_transcoder =3D=3D INVALID_TRANSCODER=
) {
                        crtc_state->sync_mode_slaves_mask =3D 0;
                        return 0;
                }
                crtc_state->master_transcoder =3D INVALID_TRANSCODER;
                crtc_state->sync_mode_slaves_mask =3D
                        port_sync_transcoders & ~BIT(crtc_state->cpu_transc=
oder);
        }
"""

Otherwise, I could just mark the issue as a false positive on my end?
-Jonathan Cavitt

>=20
> >  	}
> > =20
> >  	return 0;
> > --=20
> > 2.43.0
>=20
> --=20
> Ville Syrj=E4l=E4
> Intel
>=20
