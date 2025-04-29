Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2650CAA0E15
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 16:04:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8741710E4A4;
	Tue, 29 Apr 2025 14:04:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AWvzofJn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C3B10E49E;
 Tue, 29 Apr 2025 14:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745935467; x=1777471467;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=NfluAe+dzK+0sI3uCSwcVkWsmGx6n+NmpQDxfrSAyV4=;
 b=AWvzofJnXSh9mLvQyzW2K2qFTGWJzbI5k5O3ZnhTyb971yU3dGhG38LL
 cA53cra6MIf5LdRg4PcBxsxUWWPV4mjCvRNVHdwDtI6ERZtXVlNDOa/Mg
 GyE3WFWbFyzSTpoJtX/socqBdarkiAsx4Kp0OC0uvLfEve5qCPKSsW8Ar
 2muagKGmDjIuYY8DzklxxsgaVh0ZTYJar8GdtlpR0Y59IhtjXCTm+7Yze
 fOlDcR1O1K/KwbE+9QK4ZruTYxJlyJ54XC0dweRrzRSlNZcVnKafGGc1t
 ZZuWjjlY5L9yTSuNrbq15gnIexwF5j1gZ6F7KgYNqbe5x7BGj2fBr7Kj9 Q==;
X-CSE-ConnectionGUID: LgcivsXvSQOt/sDX2Tmjbg==
X-CSE-MsgGUID: Hr78yUAITmqvLNcwIYqtPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="58549320"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="58549320"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 07:04:26 -0700
X-CSE-ConnectionGUID: 07P5qnEtROmB5RIL8wlfmQ==
X-CSE-MsgGUID: nAO2hPRNR5qnIzEEXoJptg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="157063860"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 07:04:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 07:04:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 07:04:25 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 07:04:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RrDEvHJI/SmjYYEmZzN/8AQJkFhvpazO7IVVctx6C9P8sBxXFnHSMlr0G3246yOWAfYvYvF+E4Oq/rVP0Rl0hqFBzb52nPI3UgSvQn5CSdX09oaCjM9VHH9baGYCnHRAgSgRPNxUg3H82XIWjNT8tn15HA1Y2vA7ekZi4JygkBXo5kbvB7gS4MFMFr0sGHIf36Z1HdFCpBRQjLRPCCJi5bY5mI7oLv5/CaEZLYK+5OetlFfvbRYGgJuBge5SSzRLvkp6Ybi93rxs6naCmKKKeeydyTuXrJw0TXlCqB3XjP9bwCFEKALj7pPlLoQoT1CM8T/k28a26hGPF8zRYgsAhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5mTOt7Tc6rmzBDFVohUCInImJe2Fc2lio1lM+PLf5dE=;
 b=NBo3wxLS47zpiFaGAJS1HimicgSyuSr1vSYBKuzU9FD04SHPDiIXxFSKPEuH4of+rgqO0p3J/+gIlT0s4thqR3F2DKrq9SF9lDmbmHQOUltuYiOO91LuFI3ntLZQR8wZDYn8vYwVTmvcI8lkiODgYheFPycuR07d+qfa2Yv7hgckiWxZK/9XdDZNlHlbOEeNx5hm8SjOCD/TtKXKn33RPFSq88tOrsiHPX+O0M588wA0IbcHYv4YVgNVN9qzSNOYvzI6suqWaxcFKcz/BQs7oIaCHANANAiNbBeydP4pzX9gNHKBnNizjNUM8aft0uYQ3PqjTMEHIxXld+PzU3XZSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB6950.namprd11.prod.outlook.com (2603:10b6:510:226::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Tue, 29 Apr
 2025 14:04:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Tue, 29 Apr 2025
 14:04:22 +0000
Date: Tue, 29 Apr 2025 17:04:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/hdmi: Use an intel_connector pointer
 everywhere
Message-ID: <aBDcajKcDOhms658@ideak-desk.fi.intel.com>
References: <20250428134716.3396802-1-imre.deak@intel.com>
 <20250428134716.3396802-3-imre.deak@intel.com>
 <87a57zw8xy.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87a57zw8xy.fsf@intel.com>
X-ClientProxiedBy: LO4P123CA0472.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a8::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB6950:EE_
X-MS-Office365-Filtering-Correlation-Id: b75ec890-d7d8-4e03-0738-08dd8726bd48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HClfJb7wcDYcfUbmZBNJykqjHZJFEKQntYhK4ZdGnWjqYVkwiWAUA+5GkcuY?=
 =?us-ascii?Q?VSQIM66mrwtrG88GRwOq0u7jMXwI9jYi5qtkVsLT70PRsBlkbhsIGdn+7imU?=
 =?us-ascii?Q?J1wvEdATFY9NwOdyb8GmHrdhCv9cEpzC8OIbhEiKGsTU9iiyk00IgFbWis1B?=
 =?us-ascii?Q?vtJStvfXPMnat7vsZhHrjnzU2/CAdpb77rvOkl99Jiv8rCw+yui549PFUVf3?=
 =?us-ascii?Q?E209CjxGjOaz3hWZr5d1odASC7NlQ9eqQCs/Y73N9pNDwV5IGnzhtDkiiVZz?=
 =?us-ascii?Q?DM+fTs/im3YNlKQ7QlDBguHjWZdnGyTLIaDECN9/zF4/4wetE6I+t5e78l/b?=
 =?us-ascii?Q?E9VUiE7VW6l0VXBs31gg7owIo3Rvpy0O+8CXoVLcyuvS9uGzlQ04wvLdbf37?=
 =?us-ascii?Q?qI1LflyroJzoUavOMdixygv6jfpDVG4MgnGXTlptNKlZ4XKLFFVLA4b+VuTT?=
 =?us-ascii?Q?mOFTi0ZJdgRPYgYe1rokYk0bAc9eIQY4vSWz2RQqUnyBnbLWhmbr8CMrDmqM?=
 =?us-ascii?Q?kz3zduFL+fA1DzfdcrfK84PSTrMBVeoJ8Lai2oum/tdbxN2R6AFacol3qZob?=
 =?us-ascii?Q?OzfBK8Iv0bHpPzGw4dm0I7dU/tiHPwAzNZcHGC3nG6eFqMa6yN8G65bcnJBK?=
 =?us-ascii?Q?TqwYxlKb9NVssb0YqX6VHk38ny2UWPgCjux3/MxqaF7XWVN+mFP6z1XAw7ED?=
 =?us-ascii?Q?voZM4WQYKPRmA0T1AnqrfjfdI/Zis0N4VgCqtCuZAF/sv7XF6b3xYx7sVi7I?=
 =?us-ascii?Q?xFdL9oaI41CVqPONB/PMIeqC7QsQi+5yHd2rZS0jb/PN04etUv71HFoQKHzr?=
 =?us-ascii?Q?p3f7UArMHhD701vgc0i4F87yF0vPVsfeOS10O2dDMkt8J3XDPR/2YdOQreZx?=
 =?us-ascii?Q?zu1fqHUtiIMLAtK2jadhQ5Zru9G7OqE8wi2nQNmN80Jtso4eBxCuYOGrtaKC?=
 =?us-ascii?Q?VWsraI/xszzzz44rlVi6+Fmi7WJZDVhY5l6yHxVn15dRRkP1iWP9WOimrMto?=
 =?us-ascii?Q?w5Zq3TaFjkHhsqPgzUyL52U1EpMwx55AzIsD9zWooJfa6sphVLDt8oi2lNug?=
 =?us-ascii?Q?RRbqyv7ud4UZ0RdRShn7e7+Y4aut3BHGJMarT/A8iGV6cfaQuIOIAZ3xmUn3?=
 =?us-ascii?Q?EHkv0HKV5470E6zb6RC8nf2Su0bbYGl36OTBDEO9e2yeRJ9KYNseKdiIq9yI?=
 =?us-ascii?Q?WSA4abQvK1qO8mSsvPBnjtDkihXxXevtcyfg4SqrlR0WKjlfMZgG0/rXw0GK?=
 =?us-ascii?Q?jvPzhLah4WU2GWBwQaJw9j/3nLUAmnxVgIDYLQPzkWuyiLA/JnZaJYvmddnU?=
 =?us-ascii?Q?tLfmarETC9embmIM37T7i8QlVSwMeCsLn3Gq2gZS028c6dfGOI3BSwfZsyH7?=
 =?us-ascii?Q?JwGKWqTLj/8QxMBdD5wTnVUmwc6MxEUyCu34S+SiigGgQQezmwTCIAOmjmai?=
 =?us-ascii?Q?toKeaElBAKs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9NGo1rgywqm9/XCu+r0KM50hv4Ze9QkbeSdwfv4L9io+oSQ/UgIkZN4+LM76?=
 =?us-ascii?Q?u3N9G+EZ3E4GpzqvaxZmyqcz8wwcp55lexUi0Attnjv94vj20babn4E2D53J?=
 =?us-ascii?Q?HHBT7iCRPY+DY6zaGkioEXc1Ewo0dv2ElNiSwT6penWrRb+eAzP5X3B4NazH?=
 =?us-ascii?Q?icZ/QKEfg1WFGs0tLhNItPpJXue7JQ5AazMTrZlF+edXGLp89NaiVuYIGqCn?=
 =?us-ascii?Q?ixH/hsrkHrH7j4vbyPepjEtN+t2N6nRf4HUeIvJl+UuvkYEjFF4ei36u7LrS?=
 =?us-ascii?Q?+5SIj8WtC/Te3V4mnw7yxEMgF/h2KvQuhz5MM3Zzz/Zqj0aEbXeVqmDklb4L?=
 =?us-ascii?Q?tIgEmRMZUMYvsP/sOb/+XGp9h2MUwFp3DbOFzNOdyPWG6BN0T2xKnPrT5eiW?=
 =?us-ascii?Q?gOKZkHO6utgM00b9QOVt5nCeaVwqzzuhkrqMdf3ZYVpLPuW9PEd6rvCXdo52?=
 =?us-ascii?Q?TNNmjWIL5ofRt1X1y5P/DtFzS5Qzkm+E9zvnfm0lNVLGhrgih7nBS58LHLBx?=
 =?us-ascii?Q?uW7XL1Nfx2voeNCETJuUTY6dQ0va9Kb8ObSezshZb2rn+DZUOuXAXv86O0nV?=
 =?us-ascii?Q?Wtw2/+xsvQ/OkZz4EDhBwEKBdw/+zG2akzKXK5Xq2s9KTWD25xCC9M8NWoDK?=
 =?us-ascii?Q?qYeqxOxLHDShQw2NvFwZOrGgQi7ddX9mNS2HTxmdJluVP6cKESLdltkAqaaf?=
 =?us-ascii?Q?kD2CDRDRERoGmnBP3zpyDCPqRciqt/FwSSr8fYO/rJr1+fyhwLIoV2SkE19J?=
 =?us-ascii?Q?nVa9JhDwrqdNsZrltEaXYnUtXZDg+PBiLA6oibXwl/9qHt6wVVIcNS6CG/Im?=
 =?us-ascii?Q?R63NsAvPUmBw0veGirFWd4V1SGIadpLgXaL0FXcA8bJtxtHqf2KFgqdcXriw?=
 =?us-ascii?Q?qf98Sx1lIJWEG1aTxyxTbMVimUmutbOy7qEVUboDO7VBr2sh9ysSXz+g+tpe?=
 =?us-ascii?Q?a1jeMMoJviq+0scjDxI8MeLhG/cOcUk9TgRGBdD5qaMvinUjJgZdsTQWjKHH?=
 =?us-ascii?Q?DGP/BhD0cgO725xPZ49sWWfxoJbOd8GO0fvdl6W4DMed1m0eZVe511x/um9+?=
 =?us-ascii?Q?swELBwY7ffz5aslPfOhVL4urkkFt93FeNHULn4jcScBooChzJwz4c/2hhw+X?=
 =?us-ascii?Q?AvtTirFL6PU2ZNN4FL/rCnlhsMbw16phvqbqjtwVBi3RM6zJQv6x/ZDZJNYM?=
 =?us-ascii?Q?+BFXXyCM7vBiyU3HbPdrxkdZCcr9M2j+dvIcWj92A88gae1WqJKsSy1UgmUd?=
 =?us-ascii?Q?bmu7RgQR7Ot5kvtwqHPsGxNfcxLQrQ1ZaIKQmK9J28RpoVLKlKS0vEawWIST?=
 =?us-ascii?Q?3THf1p3bNcnrE/mw9LWm5kq+EAhjFd/w8gaUDIk3lWpIFKe63gkZMgTNptUA?=
 =?us-ascii?Q?uqQZVIv2OoxWo9MrCA4wf5r/eY77F4n7CrmE3uOghYhEDPz0g1mZO5lzN1/p?=
 =?us-ascii?Q?/AWH0vkn4o3xpzkMoU3AiRwjqUOblhZWo86YctkpdeZ/isBm3/gM/FaNUh7s?=
 =?us-ascii?Q?kLtMYkIPW+ygE7w+1Y1ZGAmvcVRDSh2QiKodgadQ3W/xZmD69fQFPpmQQ9H6?=
 =?us-ascii?Q?Tjg9x93OekRWQIXkDv47u9npyXgSQ6TnlFwOqRBp?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b75ec890-d7d8-4e03-0738-08dd8726bd48
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 14:04:22.1865 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pJexN/36VtyLZNq337H5Red4Q38doPlnsE0qC4H/MGcA8z8jSJFIf2wIzIEwCHqT2wRgyQRRBmBhUvjYtWuXvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6950
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

On Tue, Apr 29, 2025 at 01:36:41PM +0300, Jani Nikula wrote:
> On Mon, 28 Apr 2025, Imre Deak <imre.deak@intel.com> wrote:
> >  static void
> > -intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *connector)
> > +intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *_connector)
> >  {
> > +	struct intel_connector *connector = to_intel_connector(_connector);
> >  	struct intel_display *display = to_intel_display(intel_hdmi);
> >  
> > -	intel_attach_force_audio_property(connector);
> > -	intel_attach_broadcast_rgb_property(connector);
> > -	intel_attach_aspect_ratio_property(connector);
> > +	intel_attach_force_audio_property(&connector->base);
> > +	intel_attach_broadcast_rgb_property(&connector->base);
> > +	intel_attach_aspect_ratio_property(&connector->base);
> 
> A guess a follow-up could convert all of these and more to accept
> intel_connector as parameter.

Yes, all the intel_attach_*_property() functions look convertable now
for all output types. Can do that as well at one point, unless someone
else does it.

> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
