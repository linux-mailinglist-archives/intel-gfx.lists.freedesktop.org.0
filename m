Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CD064BEDA
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 22:54:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4A9E8911A;
	Tue, 13 Dec 2022 21:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB7710E367
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 21:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670968438; x=1702504438;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=AVwb08J/apQEWt6mxld7mrOlcUIs1XLlB85vjnpzJEg=;
 b=ceIm1Q91hgGcmma4xfIbQB5ttsGFkc52undZ7NG6TKlIHFpgKBOQLkyh
 0rKB43GLkqfnWVTTMqKDQ7TUQZ5K7XOCy8SIGAahkEPzXmA7sTbIS89YL
 9M00/OfXpLUItA4cWdymATygleM2xGYdgSKjlSqb3IiArqza15GdGmQt+
 WVwo3p9DpRGQHfotMdlw1Bh87rizhWMWNCf2b+UHG96PMSyuRCCz7DSOC
 ZgCBM3bHxq7h1KLqWgabYz/E2/AbvXq49OZsEqBoZjMYBLZgtGLpExGdf
 9vyc0KL8tCizaASaFK0xkbOZ1WXtQq577vrmRXZ8xHOTgUbTl60OeQi74 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="380453796"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="380453796"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 13:53:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="894048203"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="894048203"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 13 Dec 2022 13:53:57 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 13:53:57 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 13:53:56 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 13:53:56 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 13:53:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E4jUvIH6yaEwwA4SdG9taUylfpWSiT3iXeSfnDvJiKXW2H5/S4N3W0mKrFa8nL8NQX+xQ4jYRF808nG/MMscqR+9Vs8iZIGIp9gH0G/esQEJgz6FkKBu2mJ+E05zY87as2da7lMhnLfbFikCOV36SiSDLmKizcxwlfxbHKlpDJtgPUeEVtVa49TL2Km9nNoV0Yg++vz63a0HF88h0BxBD8Ik4QBbywGqnaJv8xG+UXZmomfIQajWJ5+8GZSJaWzD+48DLkp/SXfCPP/NEK/LT9zcn5jgjWOY4oJelAvekhB9ImZOPboQl15p/ZLas0J0BMV2OZDktjhdm59HOS/yDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bIB6oPLgoDDoT6E3+N7qnCEHW9j2EyFotFiE/eBWH5Q=;
 b=jh+hcWONlWBc5rurE4KgjK5zhS3J+LXe7V2b9Gz3EB6S0fS9luTJJTyMMQc3tWUO0cQOX+n+LqIJfmZyUgdAf99D0BF/eZruu81HJrpjztph4BtvEEecIub85eZaoDA8xhf7kwYWfTpNz5t947NfNKdj0HJ4EfZoKxWLmETbog9CUDv26WM7w97EfJHOkBQhvqHn8eb16MOLkNT4dX5E9c3Qrl1xVtn8PVslq4qtclxszUP4Z+16Jjd4BysN5fUXmfXe16q3VZSlJ0AuXOcgIO9g/+G76J/4F3Q7UJKqJi2rFOpTSPBYuIXwmBG02cnhKoR0aUDgFxFIK7BhZSJlYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by PH7PR11MB7429.namprd11.prod.outlook.com (2603:10b6:510:270::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Tue, 13 Dec
 2022 21:53:54 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.019; Tue, 13 Dec 2022
 21:53:54 +0000
Date: Tue, 13 Dec 2022 13:53:51 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y5j0b/bykbitCa4Q@mdroper-desk1.amr.corp.intel.com>
References: <20221209220543.502047-1-matthew.s.atwood@intel.com>
 <Y5O7fni8yzeV+cqR@mdroper-desk1.amr.corp.intel.com>
 <2a8527c8-95ba-4a06-550b-df991eaa3cb7@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2a8527c8-95ba-4a06-550b-df991eaa3cb7@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0129.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::14) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|PH7PR11MB7429:EE_
X-MS-Office365-Filtering-Correlation-Id: bf349f4e-7566-4d30-e618-08dadd5486ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vX/SLsPzyVoIyXHyYox8AlVunb5pCdyiR8ijOLydr6EXlZAJVCdabaWFOV1FtpEZIjnMVxLXFkxpkEGA0TLLDAsT2dmJvKfBt0GILm/WvCKSiPq6+mFWPOwotawiyzRWdOteP0whsKN+3zLKdNvfkt6/glLs4JOS+/983Mb2il99mk7GmrRqPQzyGYSH0/sPY3fLo142PXRrgATRk5iP222U4xzHuvR+ncot6gaMJMjtVHRlubFZAHVntcN49s1Wy1K5rPopyMUMPoGWz2tG7AU5ZvZuLi6VVM6ynEJBRXkZ9VVFZfVCaCzCaofLdzSxBfB4Ylqn2OKh8Y+Tb6Y4hUeR1OvktsnyiEzg5/pIeKhMQV+7MeZN8oq7vGSHNrhIw+uA8Aau/JX9xM/5dbA/J2DBazHJwi18awgjGPHk91+L152nOCSCL6fyWvaAlxdWuwdERtyhGgt6I4bHb3uG63tS9p/bySLmhuSjlw5l9nRtm41WUORSWZlbIDAOQAgcFvzxbfyJ7+nLxR5U20lm+wureKgJzDU7BdznFF6ODY0TMGh1cRFpEuYBR2tHDzW1lgjaAyOfcjitkWpgr/XbUMcAeInxDNhM1vUMlldiRyscj+r9JsjCy/+ACnt8vtz4e7Q/0TuG/s4XWyuFIrMATQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(376002)(346002)(39860400002)(451199015)(41300700001)(38100700002)(66946007)(8936002)(5660300002)(4326008)(66476007)(66556008)(82960400001)(8676002)(83380400001)(6486002)(6666004)(6506007)(478600001)(316002)(6916009)(66574015)(2906002)(6512007)(26005)(53546011)(86362001)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?DIwAOHTIGPjVbuYmbUezuoxuUHS0V4lQ5c0DvRdMrDiQCek5S0yaO+N285?=
 =?iso-8859-1?Q?93jRHN7LMyQg0kgQam89fq1C18irxqAx72aAkXEqHVTUVq4Td7Qcl7eLpW?=
 =?iso-8859-1?Q?15vk55Jcf9JxgvK+Y2PY9gzIQlLLg73cUt8LitWD8dY7z3DfrcGvhE7y/7?=
 =?iso-8859-1?Q?+3UKMVvh9oqQFc+drlwes1cO2MbEmckKc/AtGRUccKfL8qBAKum93O+xvc?=
 =?iso-8859-1?Q?/mx579vlX7xMfI+kh7IBT20SE66YLnrj2pxoG3UYLYk8ty9kDdcsLRq/9Q?=
 =?iso-8859-1?Q?RJhaiHkJMHb7tBlcqgvjMdhzr4XI6MW5eLm9jjbxOpnovuun2KdQ0FiqP0?=
 =?iso-8859-1?Q?uiXe9BfU4vdaOqOPQAqoHW/3VSp85tGLb8THF9yBAYOFgKqrNM71v1u5Bl?=
 =?iso-8859-1?Q?lY3QExxM6ku145tapyx/mYEssQQQUCrLpNJfqhJCrV5UCRqkMqdfoxYKbx?=
 =?iso-8859-1?Q?eT6jsik6ZbvCdK23ZgKA+YYgijNCkxBmVjHMEKZ+ujA/aDZht4hx1myCrf?=
 =?iso-8859-1?Q?Uwtp8jnWtW8IpyqEIASD/kloU5aN/edkPfl1fPo3pUtov7mlv0zrlS8aIZ?=
 =?iso-8859-1?Q?xD6tGlRle0VCFc2PqOiQQjwjEVjK9ZO6wi6OAl8Xcw7r/YEyFj8HvhdDas?=
 =?iso-8859-1?Q?b5exsonEDwVE+Hi1g07oSf6UxROIrWSMXNv5z+E76SHC3iD/EVnWTFc5sz?=
 =?iso-8859-1?Q?0xciG5JNb7tfKYngsv63zot+VJzW7V+P1mDFsELhrVLMaPHb8IcIVAF3Rk?=
 =?iso-8859-1?Q?mhvoUVNPiJrEPOhHzZ1RIqfPRgve7YEGeOacCWlNgVlJtMIqBUdnX5lHQe?=
 =?iso-8859-1?Q?5U6p4mFdnotTtBk9l5gYtJATnvsW10jQiwaaZDJPD7oqHuBHWcDImAkvHZ?=
 =?iso-8859-1?Q?xcgJ3u8/7ycvWvSNab1TEr+EJXEa5XRoscToX/bqcJGpz8sUQ3tOQpW1ni?=
 =?iso-8859-1?Q?NKWSakaDM1/MF3pU63gdSN4fep3SpyCqAUPxFVwIq7GNp0MFBpYDhkl7qe?=
 =?iso-8859-1?Q?cTeC5wd27XCHCtUI3AfeyXl/mxvjfz2gfMB+YVenPtXawwrzrNXDMsGFNk?=
 =?iso-8859-1?Q?NXQsbyE26pGv4/1aUGSVg8Hu0SC3YiBzZ+kSE23Q1kgo4tDAFeRZwozY21?=
 =?iso-8859-1?Q?I3+tMMuao+4dbY27iR2pqvhRxPUL1c4LRXF5QlcR+xq8L05iymZVRKWbUy?=
 =?iso-8859-1?Q?wUBXU1wp+aM4lDRTBBgd1ntNR0POD37z1A4jkN6Ai+T0Q28KjqB+2Fob8f?=
 =?iso-8859-1?Q?Ixd0cl4A9LIcu4dRl1YCV1VW8iqSpZZ2Xg5qoeesOpOQX3YeqLaaVA0gbH?=
 =?iso-8859-1?Q?DlHDBpz4mXgz0inzHWuSKkQArXXYA//gF8bNaOuo8K38CMbS1xia4DtP9S?=
 =?iso-8859-1?Q?hJrAYt+hxEjsq7KF9Z72Gf9lxhbvtvA3+56dmmOaPOCuyNAGn766nUNXIL?=
 =?iso-8859-1?Q?S8ofP3miNElFiY0oU0d3dyMgcq+x8jKJ4V/1OABJsfDVY0+a9qggvR8K+P?=
 =?iso-8859-1?Q?ZDz45jrorYaZCpUbh+CMGvTPvRTrUccgUrm045b22OBArvquK3kesL/nsi?=
 =?iso-8859-1?Q?GNmzuTt7+vNoGuMS8ORncuK2BjO9PTHxEo3gPAmtnc7GRTgdsgdmqjQk6O?=
 =?iso-8859-1?Q?7zQ5Nf5Pox3yctOqv7vnKz7AchnEkZSszxkvTOdaDc19zBueOzsbAYgw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf349f4e-7566-4d30-e618-08dadd5486ff
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2022 21:53:54.6535 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hBt80mUSXI/7DvcvEnq6io8/a5YRzW3ikhO5+T4HkdzUBq69rq/QrTrNyqYFdjKSHoDHV7J9y2BHCrf37VTlRinrLzJo/2O/qr+B2tTeRmc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7429
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/mtl: Initial display workarounds
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
Cc: lucas.demarchi@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 13, 2022 at 11:45:37AM +0000, Tvrtko Ursulin wrote:
> 
> On 09/12/2022 22:49, Matt Roper wrote:
> > On Fri, Dec 09, 2022 at 02:05:43PM -0800, Matt Atwood wrote:
> > > From: Jouni Högander <jouni.hogander@intel.com>
> > > 
> > > This patch introduces initial workarounds for mtl platform
> > > 
> > > v2: switch IS_MTL_DISPLAY_STEP to use IS_METEORLAKE from testing display
> > > ver. (Tvrtko)
> > > 
> > > v3: clerical issues, extend 16015201720 to mtl. (MattR)
> > > 
> > > v4: make sure 16015201720 includes display 13. (MattR)
> > > 
> > > Bspec: 66624
> > > 
> > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > 
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > 
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_dmc.c  |  4 ++--
> > >   drivers/gpu/drm/i915/display/intel_fbc.c  |  6 +++--
> > >   drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
> > >   drivers/gpu/drm/i915/display/intel_psr.c  | 27 ++++++++++++++++-------
> > >   drivers/gpu/drm/i915/i915_drv.h           |  4 ++++
> > >   5 files changed, 31 insertions(+), 13 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > index eff3add70611..8f4880a17ae0 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -387,11 +387,11 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> > >   {
> > >   	enum pipe pipe;
> > > -	if (DISPLAY_VER(i915) != 13)
> > > +	if (DISPLAY_VER(i915) < 13)
> > >   		return;
> > >   	/*
> > > -	 * Wa_16015201720:adl-p,dg2
> > > +	 * Wa_16015201720:adl-p,dg2, mtl
> 
> [stray space but nvm]
> 
> Recently we started a little bit of discussion on whether these comments
> will be getting updated or completely removed which was left hanging in the
> air. Are we trending towards a mess of them being completely unreliable
> becuase different people are following different direction here?

I'm planning to send a couple patches to clean these up across the
driver soon.  Today they're handled in an inconsistent manner throughout
the driver, some of them haven't been updated when the corresponding
code conditions got updated, etc.  I'll want to audit all of the bounds
again too to make sure we haven't overlooked any adjustments to the
workaround database.

I probably won't get to this until after the new year, but it's on my
todo list.


Matt

> 
> Regards,
> 
> Tvrtko
> 
> > >   	 * The WA requires clock gating to be disabled all the time
> > >   	 * for pipe A and B.
> > >   	 * For pipe C and D clock gating needs to be disabled only
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index deba0c49c827..5e69d3c11d21 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -811,7 +811,7 @@ static void intel_fbc_program_cfb(struct intel_fbc *fbc)
> > >   static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
> > >   {
> > > -	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp */
> > > +	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
> > >   	if (DISPLAY_VER(fbc->i915) >= 11 && !IS_DG2(fbc->i915))
> > >   		intel_de_rmw(fbc->i915, ILK_DPFC_CHICKEN(fbc->id), 0,
> > >   			     DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
> > > @@ -1091,7 +1091,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
> > >   	}
> > >   	/* Wa_14016291713 */
> > > -	if (IS_DISPLAY_VER(i915, 12, 13) && crtc_state->has_psr) {
> > > +	if ((IS_DISPLAY_VER(i915, 12, 13) ||
> > > +	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> > > +	    crtc_state->has_psr) {
> > >   		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
> > >   		return 0;
> > >   	}
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > index e82f8a07e2b0..efa2da080f62 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > @@ -537,7 +537,8 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
> > >   			       0);
> > >   	/* Wa_14013475917 */
> > > -	if (DISPLAY_VER(dev_priv) == 13 && crtc_state->has_psr &&
> > > +	if ((DISPLAY_VER(dev_priv) == 13 ||
> > > +	     IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) && crtc_state->has_psr &&
> > >   	    type == DP_SDP_VSC)
> > >   		return;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 5b678916e6db..9820e5fdd087 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -797,7 +797,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
> > >   		return intel_dp->psr.su_y_granularity == 4;
> > >   	/*
> > > -	 * adl_p and display 14+ platforms has 1 line granularity.
> > > +	 * adl_p and mtl platforms have 1 line granularity.
> > >   	 * For other platforms with SW tracking we can adjust the y coordinates
> > >   	 * to match sink requirement if multiple of 4.
> > >   	 */
> > > @@ -1170,11 +1170,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
> > >   				     PSR2_ADD_VERTICAL_LINE_COUNT);
> > >   		/*
> > > -		 * Wa_16014451276:adlp
> > > +		 * Wa_16014451276:adlp,mtl[a0,b0]
> > >   		 * All supported adlp panels have 1-based X granularity, this may
> > >   		 * cause issues if non-supported panels are used.
> > >   		 */
> > > -		if (IS_ALDERLAKE_P(dev_priv))
> > > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
> > > +				     ADLP_1_BASED_X_GRANULARITY);
> > > +		else if (IS_ALDERLAKE_P(dev_priv))
> > >   			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
> > >   				     ADLP_1_BASED_X_GRANULARITY);
> > > @@ -1185,8 +1188,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
> > >   				     TRANS_SET_CONTEXT_LATENCY_MASK,
> > >   				     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
> > > -		/* Wa_16012604467:adlp */
> > > -		if (IS_ALDERLAKE_P(dev_priv))
> > > +		/* Wa_16012604467:adlp,mtl[a0,b0] */
> > > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > +			intel_de_rmw(dev_priv,
> > > +				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
> > > +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
> > > +		else if (IS_ALDERLAKE_P(dev_priv))
> > >   			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
> > >   				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
> > > @@ -1362,8 +1369,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
> > >   				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
> > >   				     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
> > > -		/* Wa_16012604467:adlp */
> > > -		if (IS_ALDERLAKE_P(dev_priv))
> > > +		/* Wa_16012604467:adlp,mtl[a0,b0] */
> > > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > +			intel_de_rmw(dev_priv,
> > > +				     MTL_CLKGATE_DIS_TRANS(intel_dp->psr.transcoder),
> > > +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
> > > +		else if (IS_ALDERLAKE_P(dev_priv))
> > >   			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
> > >   				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
> > > @@ -1625,7 +1636,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
> > >   	if (full_update) {
> > >   		/*
> > > -		 * Not applying Wa_14014971508:adlp as we do not support the
> > > +		 * Not applying Wa_14014971508:adlp,mtl as we do not support the
> > >   		 * feature that requires this workaround.
> > >   		 */
> > >   		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > index a8a5bd426e78..0ad206f76b7b 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -727,6 +727,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> > >   	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> > >   	 IS_GRAPHICS_STEP(__i915, since, until))
> > > +#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> > > +	(IS_METEORLAKE(__i915) && \
> > > +	 IS_DISPLAY_STEP(__i915, since, until))
> > > +
> > >   /*
> > >    * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
> > >    * create three variants (G10, G11, and G12) which each have distinct
> > > -- 
> > > 2.38.1
> > > 
> > 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
