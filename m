Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD5A8534BD
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 16:34:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 785DA10E766;
	Tue, 13 Feb 2024 15:34:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L27dpLa1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 822E410E765
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 15:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707838451; x=1739374451;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=IYNFiNuxf7bgdak2nJOM8oMu58Fb5NvDkFQcrq7BMh4=;
 b=L27dpLa1UrScUhVf3PKWw1rvA46T9/+CkuCmOKkw58NATrlEZjsbJzEC
 0ouwlev8yhREZE3LgwXeuk2lKrHq5CulE5852RreYYzCVDVLvm/gKKvSI
 5Ocw59VVSP16R15+JsoBZgjHGD2r8NZ1jaQ221AVRA5Wv8kfoK8O5x9d7
 cQN7kf2JN5KOlggMKQj6I7n7jjDocHBeo+LjW4pl9Hgc2MBzTnUDyBTOg
 A0pL+7RssfpeZ7XxJCunRurPJrDVoEOPPDsg9U1ZSi0fwCmWovXa4NnN5
 0HKB8eVTfnzIj21Q7Ka57NNXnRAS/rsoWj3q0GbU1zV7LcAbCJxRFSCc2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="436996233"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; d="scan'208";a="436996233"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 07:34:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="935369140"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; d="scan'208";a="935369140"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 07:34:04 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 07:34:03 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 07:34:03 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 07:34:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZfllbOXS0TQqkMEE5vbVt1GmzWcetrblKapoLXITMpXSVEzhaciHlskCvOxIAWExif6vOUtB0HM09y/rfrfgG2REZv10EgQf8i0AKIiHnkSsgsofbg2Sr1HKS22IPWMedNjwpKKkxh09z0PqpA0oAcpIVe5sL0k0Gj9UG54YbnOxZ38fRiB2rs1qho3+aOabjkat90zKI4WhxotaVSJSGKRpj4fzdtiStySI8bQj3t8JBH9MeRuEZFa1soCs0h70LEDtkaq65SOpOLRRfWbwcLFL+YofCd5hJQR9OXAA4eqjv899MsBsa1ZBcULaQ8fm0InaXt5+roY5VTJDlC6Oiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rv5oFNrDMBF2R2wOMUIbjVU/VZ8G8sGmzo212pseJYs=;
 b=WmKXGCwsSekjPwborcSpW7VLEDnPc7Z2J01kyl4jZ04KbV/UnhBbEAw6XKlEQ+Wl8+GTRxihS54NnCnXup/7VT57bfsJgJtjCfDBdUUVfMPQQRp9GEhos8rOlkvWwKx4Qo/iNhe6j2iY+TUjB/8aO526iXlNmsTA8D6L37vq8wayicts8QDgkOVjCLsMesVH87pVzaufL0c0bGqACmy0Juh9D8qX/Ve0e5aKwAtg1aGCuhO4AFaAi/fbX2kkl3WlPmsyu8DQbmIA5EBLRf1UoCt+U+c1tw7uMm9X1cmG7MuRQ/lCHCGDEhJ9KCFF835NHUtdbh7uWh2QTK29jmOJ0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB8222.namprd11.prod.outlook.com (2603:10b6:208:44e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.25; Tue, 13 Feb
 2024 15:34:00 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 15:34:00 +0000
Date: Tue, 13 Feb 2024 10:33:56 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Add bigjoiner force enable option to debugfs
Message-ID: <ZcuL5K-NtXXHkuUq@intel.com>
References: <20240212125011.66174-1-uma.shankar@intel.com>
 <ZcuC56_5pZerqAV0@intel.com>
 <DM4PR11MB6360DD7D7B6557C5D0AEAE97F44F2@DM4PR11MB6360.namprd11.prod.outlook.com>
 <ZcuI9vcmQEy+kvpR@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZcuI9vcmQEy+kvpR@intel.com>
X-ClientProxiedBy: SJ0PR03CA0130.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA1PR11MB8222:EE_
X-MS-Office365-Filtering-Correlation-Id: 68c1d82b-2793-4a0c-56da-08dc2ca93339
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7od6ZCRLAaUBVIsddLVl1j09SEpef+p9hA7xRuy8w4USNspRvdZXpYLNlCDubBGlQWu7EMRMv/Qp56W+loq5cJhqFSttyRWpGwQFELAqDXxFrDtsEAGezofX90KfB4r2sDRRrjpLH71MFiS4MG6Pj3Ai8CHlhZrNZLrrwxeA8qIM1mMUlCADUqKA+gTZhRsiIPFjum+0Dc2ZHmFxy5u5E8mhgd0VLosJyp6gnCF5D4f33l/FftQ2f0nk83qcd3aRmzBZsI5W6Cvpycfz1vMPjNT7CRLkrILDoDCJ9I4GnjWRrTXm/rDSyM3JCdsqhOYrx3Pb5a78cvxoOwvKhCTlXikL8pau4Zr1eE8baswiTLmbhhXlfEYRv41uvkRxFoxUnASvstp9pQwP4O1ZFr4rumRy6D03ccoU17RkTole3qsv5w0bcPjI7YQ0GqCuRbOmE/u28a4f5enyKu3uoEmduRP477wDlvo0XKN1XGA7ubyhJWjSlARnuVtam7oSppO4YXIkcIK1nNCezti3BfnHyIexuxjJj9ksod/3lHMOlPIvOgAq8Xf2gwCgca/y9HZO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(2906002)(44832011)(41300700001)(2616005)(478600001)(83380400001)(66556008)(66946007)(5660300002)(6512007)(8676002)(6636002)(66476007)(8936002)(6862004)(4326008)(53546011)(66574015)(26005)(36756003)(54906003)(6486002)(37006003)(6506007)(316002)(6666004)(38100700002)(82960400001)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?JPnZY/dJQC8SJByNpKtgB522M+D7llvc1BNbGQuI1J4H6qlWOIh3G7lHX5?=
 =?iso-8859-1?Q?osr3Qba+PTtUoUKdfmhxk3arVIjQ0zK81DpK7mfl95ppphQUpqQPVhNZGE?=
 =?iso-8859-1?Q?W0V37Bv7mx2fwwxNBFTl9zYxpuKk6AVDfDv/ia3NLinP4rf5lnNg4jzB/x?=
 =?iso-8859-1?Q?qyAyiB+FDOu83OOXWcZ3dia7oZ/WhxxzZ9vi0TOo9H9GjJcNzlmV1txc2m?=
 =?iso-8859-1?Q?R6dkxNwhe1GndGO1w9izEvgMXhBGlegH8qGOqU9Do7AyP8kDwzEnzD7w8D?=
 =?iso-8859-1?Q?Cy3kFklEAY6BzeSY1pzHR5mhZ2JQCDR6ImbvvrmFvMDIq1qj1nFHFuVJot?=
 =?iso-8859-1?Q?522ZcHq8JtBBa3vsTQ0WsiCLjTRW8/VWZoDg/70VMl2XKNVHP9yIfIvKJJ?=
 =?iso-8859-1?Q?fc/Jw3lZGX46tNXhC33qUOhrt3DUon9XnT0Dzwqu1Gzrwe+n80H7uu68jy?=
 =?iso-8859-1?Q?g5bbYBRx1WNp2vgu+ZAqUp1VkHgcbLKiplTt9UlmejGs4oDO0L2F2ao9F5?=
 =?iso-8859-1?Q?k7PdRismKUzRcMPsWfbA+uqdVXmMksJqOu10GgiTdPmiSCk3wTu7Yn37mp?=
 =?iso-8859-1?Q?WbOW1B+pTyaHEZeEOC69D08dqMLBmSDFlyoXTeXYRyCpb+vfParpbWzyH/?=
 =?iso-8859-1?Q?chQNQqUhx7COaGOh2Ydi4N3X5qwrYWyqxrrpB2g3HJqiG5gsvHorun4Iw7?=
 =?iso-8859-1?Q?RdYe2Jj0c1mzpTwun5cswjxaOApP0Tp1n+oCm3ZCkVdgbPpsMfBnFO8dOt?=
 =?iso-8859-1?Q?EgVgWQNCIbS3oPpcCRSeuLFbPHOL2A+SfhVxidiDJiD6QZ45ejXudV7zX+?=
 =?iso-8859-1?Q?ma5VR6vy98p6ndWF9DxlQmkxZvu34T0QkAjttoGxwohbJ38HGlrKFnov8p?=
 =?iso-8859-1?Q?hALvEBTn/B0XfJqQ8JkQsFbwRLvHTYbb17uyFLA+iNAkSo3Bk5URL8GwW3?=
 =?iso-8859-1?Q?U4agIwn/rgjRQ9lfpvvU/IUqcO1AFfrCZv4wVLtD2Dyos7ia4PJ3cnbskB?=
 =?iso-8859-1?Q?TTp3zi1wgNYmO11C4TDYHwYanB+76rDaiDfmAQHbVwCkVFPPczITY7ANg8?=
 =?iso-8859-1?Q?xxHwRZUFvGc6Hqq3u3GJA60T4W5+/cO2J205b8J9B+hjN6r6Op6nMkxSwS?=
 =?iso-8859-1?Q?P6pcj6LKhnZrqqv2+xQjHmOfZ99r2rfkCZMeMTk44lhpCKdSYXJ0PrkNVp?=
 =?iso-8859-1?Q?NmNG8dUbfXq8noMlyETy3oicQoHCxtV7JbSyT+oBdqHUMsMioFLZBHNOTB?=
 =?iso-8859-1?Q?f3cn4cQLKOOqtQZs1e2d5gtWDsxqmo11oq4GvrhOUaldFu9PEzoHTsBMOq?=
 =?iso-8859-1?Q?41jVFwjZo8/Zl/QMh9satLkTUZLJ+PjKrDDMWOkPvG0BHhbwR6e9h8lWm/?=
 =?iso-8859-1?Q?zastWdE2H8V06toctPoPGxA0drBZKhVk0/qShkaEeuglqQesf/K///W4Pq?=
 =?iso-8859-1?Q?/pcLch3JGX62zpum8qUEBdSL27wdvXPdz/SYbrmy+fBbMR/kEoq5KUIn5h?=
 =?iso-8859-1?Q?UUFObtyu3WNCXKyota6P8ohvfLF02xURl3S8TVdUtJdS27ZqOmFXnbQ9S3?=
 =?iso-8859-1?Q?2ISPuF633OFujjZ7rNRm3O/DskGO4ZibUv1aL0v1UjSPIBZwlDHDttMZn8?=
 =?iso-8859-1?Q?kqLuJo/0y2113GjEcDNzQzKl4MxxfbGpqi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68c1d82b-2793-4a0c-56da-08dc2ca93339
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 15:34:00.2481 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VHwfiB89LqOc6ymzqTteOWhAMk9qy0c/L2ls4dr1kYYisOgqDuTBVvlJcbs2CQPMR3gGflW8cmz6MgThKRUgkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8222
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

On Tue, Feb 13, 2024 at 05:21:26PM +0200, Lisovskiy, Stanislav wrote:
> On Tue, Feb 13, 2024 at 05:11:37PM +0200, Shankar, Uma wrote:
> > 
> > 
> > > -----Original Message-----
> > > From: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Sent: Tuesday, February 13, 2024 8:26 PM
> > > To: Shankar, Uma <uma.shankar@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Lisovskiy, Stanislav
> > > <stanislav.lisovskiy@intel.com>; ville.syrjala@linux.intel.com;
> > > jani.nikula@linux.intel.com
> > > Subject: Re: [PATCH] drm/i915: Add bigjoiner force enable option to debugfs
> > > 
> > > On Mon, Feb 12, 2024 at 06:20:11PM +0530, Uma Shankar wrote:
> > > > From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > >
> > > > For validation purposes, it might be useful to be able to force
> > > > Bigjoiner mode, even if current dotclock/resolution do not require
> > > > that.
> > > > Lets add such to option to debugfs.
> > > >
> > > > v2: - Apparently intel_dp_need_bigjoiner can't be used, when
> > > >       debugfs entry is created so lets just check manually
> > > >       the DISPLAY_VER.
> > > >
> > > > v3: - Switch to intel_connector from drm_connector(Jani Nikula)
> > > >     - Remove redundant modeset lock(Jani Nikula)
> > > >     - Use kstrtobool_from_user for boolean value(Jani Nikula)
> > > >
> > > > v4: - Apply the changes to proper function(Jani Nikula)
> > > >
> > > > v5: - Removed unnecessary check from i915_bigjoiner_enable_show
> > > >       (Ville Syrjälä)
> > > >     - Added eDP connector check to intel_connector_debugfs_add
> > > >       (Ville Syrjälä)
> > > >     - Removed debug message in order to prevent dmesg flooding
> > > >       (Ville Syrjälä)
> > > >
> > > > v6: - Assume now always that m->private is intel_connector
> > > >     - Fixed other similar conflicts
> > > >
> > > > v7: - Move bigjoiner force option to intel_connector(Ville Syrjälä)
> > > >     - Use DEFINE_SHOW_STORE_ATTRIBUTE instead of defining fops
> > > >       manually.(Ville Syrjälä)
> > > >
> > > > v8: - Pass intel_connector to debugfs_create_file, instead of drm_connector.
> > > >       (Jani Nikula)
> > > >
> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > 
> > > please remind to sign-off when sending someone else's patch.
> > 
> > Oh yeah, sorry missed it. Was filling in for Stan while he was OOO.
> > @Lisovskiy, Stanislav Please address rest of the comments raised by Rodrigo.
> 
> Sorry, had that pushed already in the morning, since it was Acked and I was asked
> to do it asap.

no worries. if you are confident that the _show function magically works I trust
your tests more then my eyes and greps.

> 
> Stan
> 
> > 
> > Regards,
> > Uma Shankar
> > 
> > > > ---
> > > >  .../drm/i915/display/intel_display_debugfs.c  | 47 +++++++++++++++++++
> > > >  .../drm/i915/display/intel_display_types.h    |  2 +
> > > >  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
> > > >  3 files changed, 52 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > index 6f2d13c8ccf7..a962b48bcf13 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > @@ -1391,6 +1391,20 @@ out:	drm_modeset_unlock(&i915-
> > > >drm.mode_config.connection_mutex);
> > > >  	return ret;
> > > >  }
> > > >
> > > > +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
> > > > +{
> > > > +	struct intel_connector *connector = m->private;
> > > > +	struct drm_crtc *crtc;
> > > > +
> > > > +	crtc = connector->base.state->crtc;
> > > > +	if (connector->base.status != connector_status_connected || !crtc)
> > > > +		return -ENODEV;
> > > > +
> > > > +	seq_printf(m, "Bigjoiner enable: %d\n",
> > > > +connector->force_bigjoiner_enable);
> > > 
> > > probably better with a yes_or_no string?
> > > 
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > >  static ssize_t i915_dsc_output_format_write(struct file *file,
> > > >  					    const char __user *ubuf,
> > > >  					    size_t len, loff_t *offp)
> > > > @@ -1412,6 +1426,30 @@ static ssize_t i915_dsc_output_format_write(struct
> > > file *file,
> > > >  	return len;
> > > >  }
> > > >
> > > > +static ssize_t i915_bigjoiner_enable_write(struct file *file,
> > > > +					   const char __user *ubuf,
> > > > +					   size_t len, loff_t *offp)
> > > > +{
> > > > +	struct seq_file *m = file->private_data;
> > > > +	struct intel_connector *connector = m->private;
> > > > +	struct drm_crtc *crtc;
> > > > +	bool bigjoiner_en = 0;
> > > > +	int ret;
> > > > +
> > > > +	crtc = connector->base.state->crtc;
> > > > +	if (connector->base.status != connector_status_connected || !crtc)
> > > > +		return -ENODEV;
> > > > +
> > > > +	ret = kstrtobool_from_user(ubuf, len, &bigjoiner_en);
> > > > +	if (ret < 0)
> > > > +		return ret;
> > > > +
> > > > +	connector->force_bigjoiner_enable = bigjoiner_en;
> > > > +	*offp += len;
> > > > +
> > > > +	return len;
> > > > +}
> > > > +
> > > >  static int i915_dsc_output_format_open(struct inode *inode,
> > > >  				       struct file *file)
> > > >  {
> > > > @@ -1505,6 +1543,8 @@ static const struct file_operations
> > > i915_dsc_fractional_bpp_fops = {
> > > >  	.write = i915_dsc_fractional_bpp_write  };
> > > >
> > > > +DEFINE_SHOW_STORE_ATTRIBUTE(i915_bigjoiner_enable);
> > > 
> > > I don't believe this macro here is using the defined _show function, but maybe I'm
> > > not following that very well since this macro is not widely used.
> > > 
> > > What about using DEFINE_SIMPLE_ATTRIBUTE instead?
> > > 
> > > > +
> > > >  /*
> > > >   * Returns the Current CRTC's bpc.
> > > >   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> > > > @@ -1586,6 +1626,13 @@ void intel_connector_debugfs_add(struct
> > > intel_connector *connector)
> > > >  				    connector, &i915_dsc_fractional_bpp_fops);
> > > >  	}
> > > >
> > > > +	if (DISPLAY_VER(i915) >= 11 &&
> > > > +	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> > > > +	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
> > > 
> > > I wish we had a simpler check, but I couldn't find. :/
> > > 
> > > > +		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
> > > > +				    connector, &i915_bigjoiner_enable_fops);
> > > > +	}
> > > > +
> > > >  	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
> > > >  	    connector_type == DRM_MODE_CONNECTOR_eDP ||
> > > >  	    connector_type == DRM_MODE_CONNECTOR_DisplayPort || diff --git
> > > > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index 01eb6e4e6049..0d4012097db1 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -626,6 +626,8 @@ struct intel_connector {
> > > >
> > > >  	struct intel_dp *mst_port;
> > > >
> > > > +	bool force_bigjoiner_enable;
> > > > +
> > > >  	struct {
> > > >  		struct drm_dp_aux *dsc_decompression_aux;
> > > >  		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 5045c34a16be..217196196e50 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -1205,11 +1205,13 @@ bool intel_dp_need_bigjoiner(struct intel_dp
> > > *intel_dp,
> > > >  			     int hdisplay, int clock)
> > > >  {
> > > >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > > +	struct intel_connector *connector = intel_dp->attached_connector;
> > > >
> > > >  	if (!intel_dp_can_bigjoiner(intel_dp))
> > > >  		return false;
> > > >
> > > > -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> > > > +	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
> > > > +	       connector->force_bigjoiner_enable;
> > > 
> > > I'm just not comfortable with the magic _show of that macro and would prefer a
> > > more simple and straight forward and widely used version.
> > > 
> > > Other then that everything else looks good to me.
> > > 
> > > Thanks,
> > > Rodrigo.
> > > 
> > > >  }
> > > >
> > > >  static enum drm_mode_status
> > > > --
> > > > 2.42.0
> > > >
