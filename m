Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 355F86DC9E2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 19:19:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 179F310E0BE;
	Mon, 10 Apr 2023 17:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D3B310E0BE;
 Mon, 10 Apr 2023 17:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681147152; x=1712683152;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=pT2ku2mwg6VndRAFfBLMOMvQTCnS62B3bCKE8Ij353w=;
 b=MALhduXwyf9ay4tabZHHlyc0Cs75v9oRM1UrX1GrDU8pm3ljNmqz/p4m
 CYG+6MsvGxGL+e4jExQumPdOb5OatRk3kENA89M4zPHPqWOGZYqpB82d9
 0kz2WaFNW2IdL+chS/n8KJ7AEHgLRZs7ZfnfC7EkK7p+Ll3LB9rh43Wy6
 kFmUJ6LU6hgQ7A5zR1y4daBPr5rTsLBUqVviaz4/DnlV4VbKuMwiX+JZ5
 HAbbiF23Bl0saWAcB+zlRSAtrTjTIRwFaMHSoS5S8K4Xx4GruPRo0kJqP
 8MyNIc/TdRZPWVtEZIhB5ZnoPvItYxCqpYhsQd9dV5gHJ0SWoUcbE3FYX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="408544053"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="408544053"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 10:19:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="752834281"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="752834281"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 10 Apr 2023 10:19:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 10:19:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 10 Apr 2023 10:19:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 10 Apr 2023 10:19:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eTLzQCwuis9tLSRukdbRkJ+uHF+JrDCtPzH5GPvMyQAGWXfBXymmbgoCxacQmjHA2BZstZM20lNoEC/Omi9xAVzKN7NOQx/07iz8bPYL6cDbJ9MJqh5MQUXPyJJsRPgOvvdHta4+F12f8KBBTVJIyeeECcSLpXYoDAKgnP5EkX/Zh+Br0SAOVMyl69bTe6KOpkxfFpslT/dsglPnZ/thP3Y95U9v10oRxMG8Okhs2BXswrTwWiRtYBjceKnQsYT/2KD9bocBqaWdbiz7ssqJSVfeCBM9ntkQHkohZaCyS6t6NBgLad+9suPRFP9rXX4R4/DtAmU8BZQCw+/hf6aJjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=alG00Ci3YseI+cuaC+vPBrDOO+u0ed001KEE2bGAg90=;
 b=fdpxeGA1zAMXcgNP3Ow7/Pj+jppeN8LFeg0U4kiib+Jb5eU5OplJu5O9E2XNH3f67yj0/DKi9IvYI3fkww8S12e7d5ffugA8N+4EWOLa67ALtA5oHtWxZV/Utnxpzgm2jgQauLezA77FV4Yl3zDmcNTjmcQ7YqJu6LuUwvxxUGflyRg/Uac9DrkGWefQxrY+7t3XoQwJOKY37+iPqb8SAhe0QSXbxJFgCPTEwL2snNlNpEMeaV4YwcRSA9cv76YGaJ3mtGeWC5e5Qosy9kcnKL5ZxOvPGaswSmtbotEdSQ5+3qxOW/Ip7L574IetaM3u0oj4Seb+oU7MoA3IjDxtrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN2PR11MB4760.namprd11.prod.outlook.com (2603:10b6:208:266::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.35; Mon, 10 Apr
 2023 17:19:06 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%6]) with mapi id 15.20.6277.036; Mon, 10 Apr 2023
 17:19:06 +0000
Date: Mon, 10 Apr 2023 13:19:02 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <ZDRFBgKIeg9BgzII@intel.com>
References: <20230406143133.29474-1-jose.souza@intel.com>
 <20230406143133.29474-3-jose.souza@intel.com>
 <ZDQtIsxj2dhD+nPU@intel.com>
 <f75f06a5fda030b3e77a8c6a8ef81436b0a34606.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f75f06a5fda030b3e77a8c6a8ef81436b0a34606.camel@intel.com>
X-ClientProxiedBy: SJ0PR05CA0135.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MN2PR11MB4760:EE_
X-MS-Office365-Filtering-Correlation-Id: 55f2bb5f-8936-4dc0-aed7-08db39e7b011
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nno9xsCp+ApN9+wnDcjKuNwOdsY1rfVX63vfbF2ma7UNYFZPAEDx2dqjoutksQG+OO+ubrKYgsJjRg99O337dIiQaH0Egc+2u/WRn8j8jQboEGZE/Q1gaPBZmY0gvdKVRRzZK7PxBLiku95B8MFthH4zw+F+M4fq5NYQANRDoExVINhL6bwgE28GwT8DHrZhJQlQDcU+UUz2uyQg50A2VqJnTckb0kJoHQXO2YGrnsnqcBmCN8Zm6nRXCY3SbJgtTNMeNOO95QDRQE8MkhNx63W7N00d+Gz0f8v3FGftyjggE1ZAPs2+Wo7tcoStZ+qtY5bEYZPlFjS+NxoCZqc0Qfas5XVhXMZ5JoYMzSbuPX135DTlegR60r2wS5m613WMOpbvruRKhM/Zb9aIPvtfu+rtctvGCMnTmIglmFtap4jG3+aSEJKSJFmrF0rUnpcUJ6KFEj7A817mFhtbReDPzfigMdI88d5qW/KEVnrSwMjbenRkSJFfXySAHKHo2kM/W4uCocZiUOxdywpwmiglXjxdFX9diAl4xCsxW2WUxrNENiYwPyUcRNWazZW/o6mA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(396003)(136003)(366004)(376002)(451199021)(86362001)(36756003)(6486002)(450100002)(316002)(66946007)(37006003)(41300700001)(54906003)(478600001)(66556008)(6666004)(4326008)(66476007)(6636002)(8676002)(2906002)(8936002)(6862004)(5660300002)(44832011)(82960400001)(38100700002)(186003)(83380400001)(6512007)(6506007)(26005)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?tiGAXznOe7UQbcD1ixv854NZ5K8Hv06nlsNw2h5mLmEQ+qAakRuT57Kub2?=
 =?iso-8859-1?Q?WXOIY5tRVt1jNTfXYlTu8DYlt6x4Rwn4d4oH7qpvdnIqhrCH5aW41D1wte?=
 =?iso-8859-1?Q?v+GjUjhnb8Uqij+1wiWMGt/rGJ2+doCnaoHjpT98lUHB1pUpxjnwz7kL+G?=
 =?iso-8859-1?Q?5Hx04Cx62FzY0+RO/vhr2NZa+OYiLrNygClHLPS5eR12P+VQIFpycg6GWX?=
 =?iso-8859-1?Q?SFo5fImBgXp7inPyK219JFDO/9sG9phc7sQw37QmG59H0U7xqDUN6mFl6x?=
 =?iso-8859-1?Q?xudYL9fOa6D3SCTbflbBi89SLIuBzFyUTNg27SJBg4/Nstc/tzME/33Rh9?=
 =?iso-8859-1?Q?SrtJFYTj1BqehVUn/Zk0MWBm92zFXLoC207nGfGmGeP+IinhPgNC5w3ORY?=
 =?iso-8859-1?Q?hmi15ccOFMaQ1XrLOq5sp2z9cAO3GtJqo6rhpZslY9FV03UXmQbHX/Syym?=
 =?iso-8859-1?Q?Y4TLauOpDViuUOmKufx8NBDXxl77m6kZ/O9YRBW2rokpzNejHO22+d0TlV?=
 =?iso-8859-1?Q?BsBScI/OApzueprgdNmY3rDwF/YOL8OB3fAWmlqUKcnNqCoGh5h+yjbl7y?=
 =?iso-8859-1?Q?arImKN9u1NlVZ4Mn79KwNTvC4OBHl+ipWsgr8xrV4K7D3zo2tg0/pFrfMb?=
 =?iso-8859-1?Q?/PU5kxkjQfQUdrYhSU68xJ09JX9+8nFraN5QLZFza5i5fq7Mk6x/LWXHK5?=
 =?iso-8859-1?Q?bM+KX/Xn7NJ/E6WkPnQ+LCDDMmXcHA0O/M3DjZfy5XEAUJohiqX3jG7Mms?=
 =?iso-8859-1?Q?Z9N9eJLYLJQDt8OVVcnU0zxcQDMPnO6ghALklHMGop9ViNP3UNBjioDOsn?=
 =?iso-8859-1?Q?3B8VAjAKKQf4X/DoHO97IieIGOjcYYRzHi2LaEAcHRsno4fbwa+jRvfqKa?=
 =?iso-8859-1?Q?2WpIzMFl0loGtzJLGoNpVoCZv9D7tqYGBzyk4OfjbosD1rreC0LpxJ3SMl?=
 =?iso-8859-1?Q?DfLxJqcc5gYJI3Uz7UP5FJbAubUt9ArlnQN8sBq60i5z9+hHV2N8HzqB3b?=
 =?iso-8859-1?Q?MBYC2FsaB6R3BWHV0ENWBKFCiiVuWCugNKZKmBj9Zrh/H5hU5ZC7u2lO0O?=
 =?iso-8859-1?Q?ekBFLEF/cX6o7WGaCaB3E5YJ5+9ie5DvnFf8DlM8zKs06jj4bOM6CWIxtJ?=
 =?iso-8859-1?Q?bXQH9s+g5KWJq7xIY10AI+upo2k8IT7MkTpLLh6pdzzSPXV1jz1zadfPXq?=
 =?iso-8859-1?Q?bXqGLawjb9gx8M1AdQIpfPlgoiI2gwVTptiKXkBT+bmIi7c1bPJWalPXod?=
 =?iso-8859-1?Q?6g3NLkArAqldYjCeVHzsqxysF3APQJBNbGVbpKcuzs/GBC73AIsMM7cJUW?=
 =?iso-8859-1?Q?GAj/pIJLzwduFFGj6ajCfA//zsw56ictDqvXN+ZbrrM55BSYUOoJJur/P3?=
 =?iso-8859-1?Q?5xYW4DY8sLERbph4xgJXZIDEFEmBKWIgpelJLwFxWorII7az4CEMARkd/n?=
 =?iso-8859-1?Q?/ed4yJRVp71ws08G1JAgaa7hkAm84TRdNqMuKyVcx+burGMw0o/CcVdM+E?=
 =?iso-8859-1?Q?VMcx+sPVPFZrXZDmLvdv4Ks04PWiMdvUMPPEVEWxAziSaDB7y23REInvTd?=
 =?iso-8859-1?Q?HVQUkjnMFmdk7cuiL3G0jejQtLoV3yqPknKrBntpWoH/TgIiHSTIp7+AaR?=
 =?iso-8859-1?Q?9JetZYnTW9Noz8kkbtM+0IOJqClHiMFzeZCWSwi6luizZQ8+rcIe3BxA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55f2bb5f-8936-4dc0-aed7-08db39e7b011
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2023 17:19:05.9796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nVRJVQxmYWaZNevWdMlcPCkHAilsuSJKpB6A/wfdS5nTuwch1WAfLz4v1BmYgW6EWKFMpxwYmACWVpV/JsrPDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4760
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 rebased 3/6] drm/i915: Only
 initialize dlk phy lock in display 12 and newer
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 10, 2023 at 05:10:01PM +0000, Souza, Jose wrote:
> On Mon, 2023-04-10 at 11:37 -0400, Rodrigo Vivi wrote:
> > On Thu, Apr 06, 2023 at 07:31:30AM -0700, José Roberto de Souza wrote:
> > > This spin lock will not be used in older display versions, so no need
> > > to initialize it.
> > 
> > Should we add some warn_on(disp_ver < 12) on the dkl phy functions?
> 
> If called in platforms with display version older than 12 we will get warnings about spink lock functions being called in a non initialized spinlock_t
> anyways.

indeed! we are good then...

> 
> > 
> > Anyway:
> > 
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > 
> > 
> > > 
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dkl_phy.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> > > index 5bce7b5b27bc7..1c5d410b74e5d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> > > @@ -108,5 +108,6 @@ intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_r
> > >  void
> > >  intel_dkl_phy_init(struct drm_i915_private *i915)
> > >  {
> > > -	spin_lock_init(&i915->display.dkl.phy_lock);
> > > +	if (DISPLAY_VER(i915) >= 12)
> > > +		spin_lock_init(&i915->display.dkl.phy_lock);
> > >  }
> > > -- 
> > > 2.40.0
> > > 
> 
