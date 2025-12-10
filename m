Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D405CB2C16
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 12:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2642810E188;
	Wed, 10 Dec 2025 11:01:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e+0/hidV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC17410E188;
 Wed, 10 Dec 2025 11:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765364462; x=1796900462;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dO8JN7NVPbwgOc9pa0u3Tk7p+8k75j7W+GdAkjS/c9E=;
 b=e+0/hidVXxQT/zoKruzbvtDQAhJogYI+SN31ldWpI1g5xB0TRe8wtx0n
 bg87tbEszkC5LQJy8L4MZmDfDm9cS1JolFfTcHKv/+q3dCM508IW5vn79
 4qEXdQR6dHnkw7C+aRzh3Q+sBzOn/PNR/DAcP2QLazFYEhNMJ0fRJK0vF
 k+XFC7vo2fQjbd8ynlilfHGhH+f5brgxBLyj+EjNRktHZEb7szpygN18Y
 DfZ1KzB6ffeLLrEBR5bOBvIr7X8ks2S1FqotWup2gAfFxbm03GFo8+RSu
 c61uz9G0fw+jwuyQqsSMNp3yDbEWL1aiHjedb2+LIbsD0nPXieVOukVSQ g==;
X-CSE-ConnectionGUID: iLfW7Qz/TjiZPAGm1ZfN6Q==
X-CSE-MsgGUID: prGeW0rQQHWzv9fvid7zPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="78694876"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="78694876"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 03:01:01 -0800
X-CSE-ConnectionGUID: bT4jtWXQSKSbbx9AJi2AXQ==
X-CSE-MsgGUID: 0UhNDPbHQZCrD1W5kmiJMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="196546684"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 03:01:00 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 03:00:59 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 03:00:59 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 03:00:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CN/Km4RZ3RPuCbZxeQzKFuV/+Lk50gjsoQvPBni/t8NRVMIh9oG0hZmJC5zY8pSiDO6ZZk/cjQ6vMHRPZlLGGe0ydChw2uGNKuyYw5ZfNRTnivKANWKVGm0JQNs7452PdPJVsXbhFREK11VLyi+p6X6Lf1Ru8nar/h3DPc61/Ev6Q+u7c5KYSkcpZaYAOgbkiI5jpjxlStF6FUHUScBKk+9I8zVISSx353ooNyiuZY8SWGosGGxo6NdskmtmlPrBKPfr+aaXBMIdQ23U7Km6NURrwzZnPdU7bLmY8hZCr75AWMAh8l8Tosy1uYbu5HA2UfDvjOEGmw7EdH8URgwu9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hg2Vn34EdCGnsbg1sN/lhDfOT6HrwJETjGLdC+x6te0=;
 b=IkZOAJwJOvOBjuAFxZCAE3BtRM8HoQGRCNoZH5GUUZSn6rUInXvHRSEFdod0JGToo5vdgH1rl1fyvT9JCKoaEnJ8YRRoyuS+IrAptk+VDYg5L5vbpjaRE/c786qG8ZpeDtMry1T0Yif+/i1HkR117OI8ijXIgL5Ncfs4h6VqC223nREZ/jafTaKyYeqF9vgK/YsMY0a/F42nqeQIbqLwHRipYXLCQ3dyjR6a4+pMnzBQKUV3JdsBkc11gGOUR+lAuWz0yFI/sE50JN5rygd6jbTzh8mqcYRKYKIV9TlmhdSNQbhwj4nWkEJLDtZCzXT6qJlzgOp+F309nNmMIgPhqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 IA0PR11MB7910.namprd11.prod.outlook.com (2603:10b6:208:40d::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.9; Wed, 10 Dec 2025 11:00:51 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%3]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 11:00:51 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Panel Replay BW optimization for DP2.0
 tunneling
Thread-Topic: [PATCH] drm/i915/display: Panel Replay BW optimization for DP2.0
 tunneling
Thread-Index: AQHcaZjCgzc63S4O90eNCiV/4W/qSrUakhUAgAAhoKA=
Date: Wed, 10 Dec 2025 11:00:51 +0000
Message-ID: <DS0PR11MB8049E5428BA761F99FB5A7B0F9A0A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20251210052128.1857581-1-animesh.manna@intel.com>
 <b6cd982649633cef5f878054e35cd8315b04ca05@intel.com>
In-Reply-To: <b6cd982649633cef5f878054e35cd8315b04ca05@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|IA0PR11MB7910:EE_
x-ms-office365-filtering-correlation-id: 3a0f2490-0bae-4f0f-3eae-08de37db61e9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?yhj3ZdeOFmJlodfYZ2fyrqINgXBmFUKcsIdldKnYl10pZk3u5StEwKDcbuqy?=
 =?us-ascii?Q?xvcgGGRx0VnEIWP+ZlgnDbc2pXLCwWSgZRbE9xcP+BSwYWD4RaDu8gU68sKr?=
 =?us-ascii?Q?fhv8+CHgwTtMuqNaMRtmlpM3oTMj0V8YZKlG9Hdv2uYeDIglPEExNeX3Qorn?=
 =?us-ascii?Q?PxoDYnGuS7H4rrX3u+VRhW7MciRwbTTaxv5fwy67nCnENhAwJi2Ev/oo7WJ6?=
 =?us-ascii?Q?sJtuvlwvmyTmLtIDIjboGB6Wpzbo04SjrMFZFp5r66BQAKuU4WMqJ4cUF786?=
 =?us-ascii?Q?Ze+Jp01H5DIsZVo5xuDMxYYaSPaiXvY+S+HW5d1Mi7H1/mw9uLyFKi87bWQM?=
 =?us-ascii?Q?XlVsYjkn6wdaOCwcKhd779OlUVU49y+0bv5ev5QTs0F6EUcawN+kM3PaxjPF?=
 =?us-ascii?Q?MY9ZIgvglywO8ofy0PI9tO9zU6CSF5QHRSrij6MLa1BQmDKXfpC76DLVxst6?=
 =?us-ascii?Q?cZoOJFnv1SQTZ05tSrnR0POHPR8qNlOxCZJqwNp4ms1Q9cHhSl6ng/W93LgF?=
 =?us-ascii?Q?DOzevbpU9V5o4Tok7IVXfl84sPFuukT5bLIHJb9Oa1HIclS6etd1sOuynRjo?=
 =?us-ascii?Q?EktgCcVP2Qtox565mzAnUCuXEsdZRwWIh4C8cIb+b6L15oq983wkotdxuErj?=
 =?us-ascii?Q?ZMEurSb3wBCl5UXUdA0ivYnzeSrgIhHmxERWIgDdlGr967TR65IMSMszknq6?=
 =?us-ascii?Q?lmo1bTRFx1JmUoEROc85Wz8WCl1/OXoN6cVEHAcwNOq+e4SBjwBxTWoyw3cr?=
 =?us-ascii?Q?R3eauHW3ooX+WRz5U0LFO+i368wYSPBJuYgdcoP90B3867oV0wyU2SjCrERU?=
 =?us-ascii?Q?pW5/tC6Bor3QG7dBij8FjJu+1fjidN8/sRMe91TltVz7+m25HKTKr8pzi01Y?=
 =?us-ascii?Q?42OHEMcDIgUWQO7sXLi8+5U131Uw/qtPmnEvwC46dlxMYVPDMydeIyV5qzIk?=
 =?us-ascii?Q?I6r/jQ9DCAAd7sRILIh7IEKITvGC6P/FwSDV0qCYQOlfMZcBck14wBjahZ8B?=
 =?us-ascii?Q?tAN0fpV+Ve8s9DZEOakTrKva7otS/GLmzC2xu2z7pVQ4HL3ZEsgB8v5vD1W0?=
 =?us-ascii?Q?ybitqKcrzMYRFIMO8FeWoE6PvxEog4JrdFLqm78kwENj7l5f+sV92qzjZOW1?=
 =?us-ascii?Q?Xu5NKGPVX62tSS/vt55OnbmA03e5I86h4bgxnOFR2npHzE1bwmR36zVwaYUb?=
 =?us-ascii?Q?8vRE/7MAVGFmSzEwZP8fpkrZoV5PT8wtUiNtsYm0tczPZuSgxbBLie9W29lO?=
 =?us-ascii?Q?T92ofRdsHm3fROE4Hyd/uepkocJ0Auh8diWrB+rlnybffxrTbt1N+PJtesCz?=
 =?us-ascii?Q?S3gwhR9q6k6PP8WLmCkqRzdKuZCs3encLzfuwND1r+xHD7KxXb0ZEdLGQaGc?=
 =?us-ascii?Q?ExVIFH3hs/VjPTW/+pds4VA4H5ck+TMSVliWoCdjlNCI7vea5qMcY0OMkFgv?=
 =?us-ascii?Q?5wFJVNDUSBaG6GySNRvnWlSR33WthtNyTX/wL8V/epElZb+l1/XWGpmUXA16?=
 =?us-ascii?Q?MBjWQPKWL4Gtptf4SiFyaH1ciEWFBQPixAXf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P4Y3jmYIjGhhYJxuQW78WtFj5ARCkAsIuQr/Ywv2K7IwJZka6f64Gfmw99ro?=
 =?us-ascii?Q?KRmaJPBsg6ldihkhRyhehQ6txMR1RijoE3kSLe6N75TqJupPekquPsreibCu?=
 =?us-ascii?Q?kDu2yio0xsdtvVHUcvY3btenkXoeoD92M8kGfoHuiwTMi6/Kw8HHnuYw/p7E?=
 =?us-ascii?Q?0auGF0TW+DSqKd9+eRSwE/pXa5yTJ6zk9rsq28d13CQay7uYCXayrgcNyO8L?=
 =?us-ascii?Q?Em8/ab7H/ptc2WLoWyTn43YoUmbpm1T+kMfmnPoxNo1pvuJLnshSx8ik/h1A?=
 =?us-ascii?Q?W+94z/QLUxcrS0oWgmKO3etrYreTdKwxS0LjynsDGPh/HCB6vXtTBpuTQ5Oy?=
 =?us-ascii?Q?BxNPMDEPAMCLu9PHgQyuwlS3UakmZUwIbFYbRrQ8ipp40/gIhWBpvAXT0ryM?=
 =?us-ascii?Q?eu5loYDgexriEeRp5m1wkngeJceBuhkaeAMbUjm3sLMa2qHCF913mc+nleTj?=
 =?us-ascii?Q?nAgPhbXSLUBOagq2OGvFmw6O4Tu8bn5TwRJM/81A5hlNwpaajQM+hZV4ALs6?=
 =?us-ascii?Q?C2nACsmd4ivj6EN6H2OLWxmN3HfLeLJQBnprL2c1ytEGQ1/n9FuQTUDvBERh?=
 =?us-ascii?Q?FkXQUqRDFl82KdbXw2Jit7uuk3YkJCCHkFhEyqBQ5rOGbyA5XkocmEkbUN02?=
 =?us-ascii?Q?sLTG+AD4Uu8+iXuIs1hDS+WYoRRMb5aUsC57mZ9dgreSg/DyakzjHMLe9dlG?=
 =?us-ascii?Q?X9vaZYyJI7VQI9kjIzxxyxqQxfRRUdqpallVTFur1lBXAkya1Rw4dnZbObCD?=
 =?us-ascii?Q?K7PtMNbH7U3sN7OA6efOdqEHGuuuVxYcX1EZiv8B1yRI050kJXDfpNSekmV/?=
 =?us-ascii?Q?CcQ0x0rv38x+9/INX83uTWtwOc2ka9r1C8j95Kv2Hi02yjuo3noQZ2FBLZlk?=
 =?us-ascii?Q?Wu8iXQ7cHJQ2LgDG96F//fDhCJYlb4sBvSZup5m94tw7ff3+dcbVuaYpLQvU?=
 =?us-ascii?Q?cxv/qGScTl0pGlynhrV9l1ZhkOHNtZYQ9MrM78+gMSKqYtxDvCATYJ4jmcy3?=
 =?us-ascii?Q?GT+24ZCqDW3nIZ2KIjmE2bhMtoE1uof5riBRGJ/PF0NA62ObFc78Jyn4YENa?=
 =?us-ascii?Q?j30uAZoKlFJk8cAAKACfnWPPvlscSWRtoQXOymBezzZS4gJJip+q336mKXkS?=
 =?us-ascii?Q?ty+zpY0w12lOZhlxP4hq0LLxZ+/482CPt0Oj+eb5r2tlzfIi5VeAPikyMw4v?=
 =?us-ascii?Q?DrupDzSEFzgt/aFv5VtBRbJsVnfxf7rq7OP0Vmg6HfUr8oVrd/BY2NUWvE8r?=
 =?us-ascii?Q?LN3eDA+y9DIRVvYiIAh/GHcinbbK9BImaUJ1t/PPDqaNLIbtxlNokM/3vX9h?=
 =?us-ascii?Q?IguvBPAXJM+wCikiqKP3U8/QYZddppqZ2Qmbxt/0lUN28AtOXy5z9dDWxcLk?=
 =?us-ascii?Q?SDp+8FDMjrlMOSJFkXU4O0Xk2ICx438Ftp8zXVEr95tvvZh+JvjqX+BlvexD?=
 =?us-ascii?Q?DW/e/PYdcdLYb7vFEjRPmhDoE58rQc2Notupw7XCp4BZ4NbguFH34+YrRiJA?=
 =?us-ascii?Q?qQtsMwI9mg6ZNucI5cmXgekcEboY1FBMY1b8lMnKdjRJEqi0mD18zI5+JtUq?=
 =?us-ascii?Q?IeuQ8fJJimoFefDL052H4B2Oj++nLUTq80gccDf7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a0f2490-0bae-4f0f-3eae-08de37db61e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 11:00:51.2988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PzFhiCpdQgeR2nNlASdjpTo337Z3uisHy2ofSCIJVEa2l2/dYiiKmICMPC/J2uAUCkGT9Mwg7RQNLLTpGVWJbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7910
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



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, December 10, 2025 2:25 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Panel Replay BW optimization for
> DP2.0 tunneling
>=20
> On Wed, 10 Dec 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> > Unused bandwidth can be used by external display agents for Panel
> > Replay enabled DP panel during idleness with link on. Enable source to
> > replace dummy data from the display with data from another agent by
> > programming TRANS_DP2_CTL [Panel Replay Tunneling Enable].
> >
> > Bspec: 68920
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 23 +++++++++++++++++++
> >  2 files changed, 24 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 9e0d853f4b61..b6fc249a9f09 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -2051,6 +2051,7 @@
> >  #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans,
> _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
> >  #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
> >  #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
> > +#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
> >  #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
> >
> >  #define _TRANS_DP2_VFREQHIGH_A			0x600a4
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 2a378a5adc59..d0a01a08299e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -44,6 +44,7 @@
> >  #include "intel_dmc.h"
> >  #include "intel_dp.h"
> >  #include "intel_dp_aux.h"
> > +#include "intel_dp_tunnel.h"
> >  #include "intel_dsb.h"
> >  #include "intel_frontbuffer.h"
> >  #include "intel_hdmi.h"
> > @@ -2152,6 +2153,25 @@ static bool psr_interrupt_error_check(struct
> intel_dp *intel_dp)
> >  	return true;
> >  }
> >
> > +static void intel_psr_set_pr_bw_optimization(struct intel_dp
> > +*intel_dp) {
> > +	struct intel_display *display =3D to_intel_display(intel_dp);
> > +	u8 val;
> > +
> > +	if (DISPLAY_VER(display) < 35)
> > +		return;
> > +
> > +	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> > +		return;
> > +
> > +	drm_dp_dpcd_readb(&intel_dp->aux, DP_TUNNELING_CAPABILITIES,
> &val);
> > +	if (!(val & DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT))
> > +		return;
> > +
> > +	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> > +		     TRANS_DP2_PR_TUNNELING_ENABLE); }
>=20
> Why is this so separated from dg2_activate_panel_replay()?

I felt this feature more leaning towards DP tunneling, so kept outside of d=
g2_activate_panel_replay().
But this is just after intel_psr_activate().

Regards,
Animesh
>=20
> > +
> >  static void intel_psr_enable_locked(struct intel_dp *intel_dp,
> >  				    const struct intel_crtc_state *crtc_state)  {
> @@ -2221,6
> > +2241,9 @@ static void intel_psr_enable_locked(struct intel_dp *intel_d=
p,
> >  	intel_dp->psr.link_ok =3D true;
> >
> >  	intel_psr_activate(intel_dp);
> > +
> > +	if (!intel_dp_is_edp(intel_dp) && intel_dp-
> >psr.panel_replay_enabled)
> > +		intel_psr_set_pr_bw_optimization(intel_dp);
> >  }
> >
> >  static void intel_psr_exit(struct intel_dp *intel_dp)
>=20
> --
> Jani Nikula, Intel
