Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kG6oA6cLEGpqSwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 09:54:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C55B5B0412
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 09:54:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D8110F50B;
	Fri, 22 May 2026 07:54:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kty2LCVY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E20410F4E1;
 Fri, 22 May 2026 07:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779436451; x=1810972451;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=24Aj7JWGdGr21PDyJwZmsrDzslggjjAUCzRvRxbMTPE=;
 b=Kty2LCVYmNudbBhzk538KbTQjscUDqq/N0CYzWIsCel7bnvz0d1CvPax
 tRBsToKxUKbPHcoyOHsMfPHPMts8YsX3VNpRXmf407r6lxYc5GA4Y0iqC
 d6lM9f0DU6COkzpDDrj9DrzbTmaws/1KVLyXLh+Wq32Mco3dvSGkUD1wL
 fZeQB4/THvZ2PT/xluDrpGQakVw/85aIjYbtxVLIX1p/NJPvVHfZOnzid
 pg1s9vc0uVMMXaG+EgPTczx+4DkDVKoDBNYtMBBDIf+MB7VM//JVunrim
 rTDA0y7O7x1bgf4u9Szm3JdM2nhUI2KFLx5awYgAM8rjBgUj3E77FwzKa Q==;
X-CSE-ConnectionGUID: 6J5LnbXnS8Gx+7T6q4JYzQ==
X-CSE-MsgGUID: DNM1DEZ7QZKiFxiPy5Kfgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="80093989"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="80093989"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 00:54:10 -0700
X-CSE-ConnectionGUID: cdAP6Yr3QDC0DqAHQoLMlA==
X-CSE-MsgGUID: KiID1ERPSwekeHDETg8JQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="238243055"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 00:54:09 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 00:54:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 00:54:08 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.36) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 00:54:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lHfEECHhcYSY+KCXGqjyVuXYQJnkrhdeX2gO/zFDa4nPHm5M/4sZ6jEwzDTa5QbI6DEOMg/Zsy7vgs0ZKZo4I1GmCAGL5xc/206+5UZKXoK4f2BwXBs7aRP/fl9rfEYqk6WTlBri20buloQIbGsriF/rlS7wlcDiKLi7thcxuPKe6A/+9IIZ0y6tOC2ryssUeHo2llTKDOAa3WZEk5J8xclDQWRFtJrrPDpvno9NhSZsyK6+Q45eswjYSVZIgk26uQupNE7qtwotXKYRmQidPG3L1Vxyp7FzmaYsM8vYMki4h4v3w1EfZmUP8529gREy6UHOYmcwps3BZKWWbKCwDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mAXe+d/2SnJmhULmjrvJOmx263KwaluAslIVvqZRLT4=;
 b=kLIC/Og+5ugJP+v/kUfUkfXi8saHU83oEsogfNL3wZL0tzKkGoAYJ8zoAXZewmGIl9L/hFJ08qCXnesUidiX7Y+RpvzYF/1X916z+DBaGI7QFmqOWKC2+ZUaKH5NF+Uwiq1pWyR8t/8C3ffFrOMqtGllibGIyJuPmRO6+payWKrQGNkKzN9Aefy+oIzSc0ev39lKUbpHG9Q9dCT7zsUlzavs7NPRl2Pu3njAVAvzZUJJHNkwxhaUqh1pGvQvbxYb+S9JOpdPn8kM949KrNiY3r8hIV7O7HCP6vaGVZiriaBZjodJw7qRpWKEz9rCjueTSRtZq/ZM7nxYREQRT2pKeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH7PR11MB7719.namprd11.prod.outlook.com (2603:10b6:510:2b4::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 07:54:06 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Fri, 22 May 2026
 07:54:05 +0000
Date: Fri, 22 May 2026 10:54:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/5] drm/i915/dp: Detect changes in common link parameters
Message-ID: <ahALmSY6pGpdi0tD@ideak-desk.lan>
References: <20260518112427.2460725-1-imre.deak@intel.com>
 <20260518112427.2460725-6-imre.deak@intel.com>
 <ag98jVxomfBDkzQ4@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ag98jVxomfBDkzQ4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6A0.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::127) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH7PR11MB7719:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ec5d049-1424-4106-87b2-08deb7d74c17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003|4143699003|6133799003|11063799006;
X-Microsoft-Antispam-Message-Info: 8scd9dj6OwfnJO6zaBlCR/DUcvhrsd7BIzdcrcrX3sL8MqGqu6MAfzY36sxNmEB+e1GUl7G0pGIyQzVmXVpVkuHrFJhNgum5fr7DX8iYIQU8lViDOp80H2jRNdvi/LcgRr4SUPegJl3a8cNVDPeiJHy6ohHq6cIrL+b7J7PKQGljh7H1unvs/1i89Pz7Iyg66zv2qlFyfKlM/lIjBb4gIX54R7TIoUKhRpFs1jxCear6XdYqm0EECPOpPbavJigu2szgQjmHxqTsXJ7FAQ4RsXMq89sKEItDktjsdZZcoztATqSBcku1Ws7EOXu//Q491Rb67ngHzSSF453hx2htFMyEOUn6CzLFjWea5bg138bTJYWWQr1B5rWkNoPumxk/0xkQKdX91m6uuUaMupZbEIiFa7imD4QhczCqrjdAOuR4DBjxhnG/9HMy1c+nSkqBquN6AfX9mca+qYorMnaFvL/6qAo1Va5tg9K3JQvR5eGlm1qmzDf5LFRId6TZ3ICUQuhKZvVqIapnHXAMgxHXmBivcgVLIs/+Aj3qd2gc8GS+H+qxOQo6OmwbtWGAgkzJIYSEgsmXAgmjE3K+RxB3a9z3Fw9oj+5QoPRgw1rVb6Efziy9XrXqy9vBNYKn/6nojQd+n2vUsSo0V6xuTKO4xHTtrPo+srnHLOyANvshUnoxvGs7+LiDt3HjeGeHvdvh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003)(4143699003)(6133799003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?9jM0jAzsCwxtelHWYz/HehtfFY3bmOzbJAyy37uQ2IzMhy7VOIBM7e+jul?=
 =?iso-8859-1?Q?buuKRUiRon/MMwYjmqka/rJU/XqNY0Nw6AEeB1tf6mTl9o+EeCPLeSjz8k?=
 =?iso-8859-1?Q?5+Gs3ei/ZOa6XNubN2JydawWjKuMgc6warHlFGg5yQGTYfaEsdNdtV+j0j?=
 =?iso-8859-1?Q?CTNJ46l4TLHGhuWauef9PVLr9jvwhTIXAQymVpEUuRBXHAimxykrlgnC0u?=
 =?iso-8859-1?Q?yeutxroNggV4ROfr0lXjBj3KuPMYTJx4ypAUxEMHoYE2+upuDidPD/yaCq?=
 =?iso-8859-1?Q?oswsWgBb3LvP0Uc8Nf7a2Jr4SmBEzMX3cXheYXY9tCjCZw3Xf06+dbB4zV?=
 =?iso-8859-1?Q?AuXYV3Rd4z42HAN1ZuZPZD+3hxjtT5OLPIpiopQ3CLth+tXtqog26ExaNP?=
 =?iso-8859-1?Q?re2eas3r8FPM4mIp3miqMthMZVnG3DMoK8Gt+Tmhc98ZAagDdS19PpOETF?=
 =?iso-8859-1?Q?JZZqtvqTsRSikoUWkkTB2P64D8QsNpHox9T8r5wiHmOvXVOUgnQZP9AsXO?=
 =?iso-8859-1?Q?wRXrcxuPY5VoJdfkToRA+31NlPAMx6uiUOA1EdyqT/3PpwAD3YuKP1n9Nl?=
 =?iso-8859-1?Q?bfiX2hllxiH5yDS1sGYhNhDgLGz8bb05mvJHMbc+bi7xTm9zxF5Gt/HpHf?=
 =?iso-8859-1?Q?MRNKHSYLG/2miYdoAglhGOZdeY8TRe0HiU+TAE/m8Q0m6/788rqMzl/Z95?=
 =?iso-8859-1?Q?hYf+Eq084NIK+BdF6omr/UIj8Rg3QuHnjw7wiTZ1MZke5yZYSjqfu4FLfL?=
 =?iso-8859-1?Q?5yI0lo9ysbSSzSd/RKgohfJ4s3/YgH1tOnKs4RwmX1UlEHMDcFWKaby41+?=
 =?iso-8859-1?Q?fT9lSlRjRAYmSkcCHGA9Yl6/677KeJezHHtQIlxgurIorIq0zJzhfmVOXN?=
 =?iso-8859-1?Q?CqTyjUSBsnzJr4LCv++mTYvsmPuEsXDc72ZnCaTzg9c9eFeFFPg089daqn?=
 =?iso-8859-1?Q?RFBVe4UowBnL3Tn9b1SaAmsW/DMaz+uvqtO6WNo+6YqDbMe7u0lyEW36Su?=
 =?iso-8859-1?Q?QzjWHvEouM7uKhEul0XIa4lulW47yr80M38WKh5uoESTf1g9gWKwqY3R/R?=
 =?iso-8859-1?Q?RdiADPe4Z1Jq5+jWtfqJhMFfYghq2lyl/ieaFyjWdBB7Fv8Ktia2cjvuBj?=
 =?iso-8859-1?Q?L29v4OBnmGvzDHi6B5mYTMhqWVr1mHn99fpm/eLoYmaRkr19f9gApsImBi?=
 =?iso-8859-1?Q?zvlAFLf42MH5qSaVTYZ/o6zzTKEUZOL48w/1r1JZxYRT3rMrGFxSliS8MN?=
 =?iso-8859-1?Q?XrI8wOlsUXbAuELAtv1GdDoJMWnTVqdYR/RXTUOJW8r2ocsRO3KXcMEalq?=
 =?iso-8859-1?Q?yqrcNfiOqpZaZ8IfInJyxI8xxscY0EAwgWe3YwYuTvMP+eqk47rfQmwC+s?=
 =?iso-8859-1?Q?DDIioSo8+XPsdHy68H0Yq32VMgM8JzZH54Tsf22Nsbgiq0HEVIKRWdEiVt?=
 =?iso-8859-1?Q?YNg59etlIOEyyxZo48VAxdmWbcxaw7akD8TPyRQSDg66tG7gHZAnZjudxd?=
 =?iso-8859-1?Q?vcpV4UQDeUtGYTy18dyLyFLWFp6RMWhWNC3W/cWxRm9jS80M40X5ZU1/a7?=
 =?iso-8859-1?Q?lWdku+itP1EUaN2qnf3irH3BZsc+QMIZJ+8qzEPzdop4mLtQAVVAxzHSCT?=
 =?iso-8859-1?Q?q6QB9pYYLH5/ChxmfvXeOptFygpOXiexrgSZ6w7JnUW2v3ssb9eGj9Ztct?=
 =?iso-8859-1?Q?D9XrL/mHCb7x95FBMsIoHA4SvEg0wNbnBiaNzpQ5cywuVmXGOSq9apv15F?=
 =?iso-8859-1?Q?0CNB+cnjh7JL+Dmmz5v9TdvrS3aIvgYFWwb33MFCtQjvPUQbmb9MMu0WLo?=
 =?iso-8859-1?Q?IKUOfKcybA=3D=3D?=
X-Exchange-RoutingPolicyChecked: OnorkVpPv2rH3H0h5MtrvFx/Ey+FvVXQBJ+ETp85obWLpe2Cc4kTpLbzhP9f0DBqH5vK0xnnNIM24/hZg0Ou0zftl7EXZLxaRoOb/GrJWJ0pQeYVpqg0Eguqb2RTubQ8cQ48aC6gpYhw5IeTSucrTz6tfACKlEU5zkv+et3YmCh1HB7kIexy0zAc6zoy0WoklEMK7M883mWUWDlDk7oM4ofH0dbU7AJScj1z20F/rpdXcx/d59x2E5NK7OWmtaLYKBCPzQfHLtZltnL2a8RK8Zjn6/62ymItgLcrnK3HuwwNaGHeOk0jSY/ZOCY/HLN1sWefkbrYYNh7DIjiBWKAYA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ec5d049-1424-4106-87b2-08deb7d74c17
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 07:54:05.8433 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6/8VbeuJQ+JpHK09qTlFECDKiq7sSn4Y8ulVTCE8e8V3f/dRAP5R8V4t7MrOScOAw4md9pAhqM/ponCvtk9KOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7719
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:replyto,intel.com:email];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6C55B5B0412
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 22, 2026 at 12:43:41AM +0300, Ville Syrjälä wrote:
> On Mon, May 18, 2026 at 02:24:26PM +0300, Imre Deak wrote:
> > Detect DPRX capability changes without a long HPD or RX_CAP_CHANGED
> > signal and queue a corresponding link params reset.
> > 
> > Besides detecting the above unexpected capability changes, this also
> > avoids races between queuing and handling a deferred link params reset.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 50 +++++++++++++++++++++----
> >  1 file changed, 43 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 6c4dadfc35806..dd968c2d9fa64 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -362,19 +362,25 @@ int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
> >  	return max_lanes;
> >  }
> >  
> > -/* Theoretical max between source and sink */
> > -static void intel_dp_set_max_common_lane_count(struct intel_dp *intel_dp)
> > +/*
> > + * Theoretical max between source and sink.
> > + * Return %true if the max common lane count changed.
> > + */
> > +static bool intel_dp_set_max_common_lane_count(struct intel_dp *intel_dp)
> >  {
> >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> >  	int source_max = intel_dp_max_source_lane_count(dig_port);
> >  	int sink_max = intel_dp->max_sink_lane_count;
> >  	int lane_max = intel_tc_port_max_lane_count(dig_port);
> >  	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
> > +	int old_max_common_lane_count = intel_dp->max_common_lane_count;
> >  
> >  	if (lttpr_max)
> >  		sink_max = min(sink_max, lttpr_max);
> >  
> >  	intel_dp->max_common_lane_count = min3(source_max, sink_max, lane_max);
> > +
> > +	return intel_dp->max_common_lane_count != old_max_common_lane_count;
> >  }
> >  
> >  int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
> > @@ -792,13 +798,20 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
> >  	return -1;
> >  }
> >  
> > -static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
> > +/* Return %true if the common rates changed. */
> > +static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> > +	int num_old_common_rates = intel_dp->num_common_rates;
> > +	int old_common_rates[DP_MAX_SUPPORTED_RATES];
> >  
> >  	drm_WARN_ON(display->drm,
> >  		    !intel_dp->num_source_rates || !intel_dp->num_sink_rates);
> >  
> > +	static_assert(sizeof(old_common_rates) == sizeof(intel_dp->common_rates));
> 
> Could also assert the element size/type match. Maybe (as a followup
> later) introduce a proper type for this rates[]+num construct and then
> we could just copy the darn thing with a normal assignment and not have
> to worry about this kind of stuff at all...

Yes, makes sense. I'd have to pass common rates to
intel_dp_link_config_init() later (in the link capability refactor
patchset), so could do what you suggest at that point.

The struct could be used then for source and sink rates as well.

> 
> > +	memcpy(old_common_rates, intel_dp->common_rates,
> > +	       num_old_common_rates * sizeof(old_common_rates[0]));
> > +
> >  	intel_dp->num_common_rates = intersect_rates(intel_dp->source_rates,
> >  						     intel_dp->num_source_rates,
> >  						     intel_dp->sink_rates,
> > @@ -810,13 +823,26 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
> >  		intel_dp->common_rates[0] = 162000;
> >  		intel_dp->num_common_rates = 1;
> >  	}
> > +
> > +	return num_old_common_rates != intel_dp->num_common_rates ||
> > +	       memcmp(old_common_rates, intel_dp->common_rates,
> > +		      num_old_common_rates * sizeof(old_common_rates[0]));
> >  }
> >  
> > -static void intel_dp_set_common_link_params(struct intel_dp *intel_dp)
> > +/* Return %true if any common link param changed. */
> > +static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
> >  {
> > -	intel_dp_set_common_rates(intel_dp);
> > -	intel_dp_set_max_common_lane_count(intel_dp);
> > +	bool params_changed = false;
> > +
> > +	if (intel_dp_set_common_rates(intel_dp))
> > +		params_changed = true;
> > +
> > +	if (intel_dp_set_max_common_lane_count(intel_dp))
> > +		params_changed = true;
> > +
> >  	intel_dp_link_config_init(intel_dp);
> > +
> > +	return params_changed;
> >  }
> >  
> >  bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
> > @@ -4911,9 +4937,19 @@ intel_dp_has_sink_count(struct intel_dp *intel_dp)
> >  
> >  void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
> >  {
> > +	struct intel_display *display = to_intel_display(intel_dp);
> > +
> >  	intel_dp_set_sink_rates(intel_dp);
> >  	intel_dp_set_max_sink_lane_count(intel_dp);
> > -	intel_dp_set_common_link_params(intel_dp);
> > +	/*
> > +	 * Handle unexpected sink cap changes, or a race between setting
> > +	 * the deferred link params flag in the HPD IRQ handler and
> > +	 * clearing the flag during connector detect.
> > +	 */
> > +	if (intel_dp_set_common_link_params(intel_dp) &&
> > +	    intel_dp_reset_link_params_defer(intel_dp))
> > +		drm_dbg_kms(display->drm,
> > +			    "DPRX capabilities changed before long HPD or RX_CAP_CHANGED signal\n");
> >  }
> >  
> >  static bool
> > -- 
> > 2.49.1
> 
> -- 
> Ville Syrjälä
> Intel
