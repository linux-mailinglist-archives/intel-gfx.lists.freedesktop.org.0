Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 990793E5735
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 11:41:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686A489E38;
	Tue, 10 Aug 2021 09:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3958689E38
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 09:41:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="214896583"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="214896583"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 02:41:11 -0700
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="506092565"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 02:41:10 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1mDOIa-0004Ll-QS; Tue, 10 Aug 2021 12:43:52 +0300
Date: Tue, 10 Aug 2021 12:43:52 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YRJKWCFs6wUSSmql@platvala-desk.ger.corp.intel.com>
References: <20210809194805.3793060-1-lucas.demarchi@intel.com>
 <162854643446.2460.12384778323935250578@emeril.freedesktop.org>
 <20210809220537.emw2bow5ztm3xz4q@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210809220537.emw2bow5ztm3xz4q@ldmartin-desk2>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_Free_all_DMC_payloads?=
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

On Mon, Aug 09, 2021 at 03:05:37PM -0700, Lucas De Marchi wrote:
> On Mon, Aug 09, 2021 at 10:00:34PM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: drm/i915: Free all DMC payloads
> > URL   : https://patchwork.freedesktop.org/series/93521/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_10461 -> Patchwork_20789
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >  **FAILURE**
> > 
> >  Serious unknown changes coming with Patchwork_20789 absolutely need to be
> >  verified manually.
> > 
> >  If you think the reported changes have nothing to do with the changes
> >  introduced in Patchwork_20789, please notify your bug team to allow them
> >  to document this new failure mode, which will reduce false positives in CI.
> > 
> >  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20789/index.html
> > 
> > Possible new issues
> > -------------------
> > 
> >  Here are the unknown changes that may have been introduced in Patchwork_20789:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >  * igt@core_hotunplug@unbind-rebind:
> >    - fi-rkl-guc:         [PASS][1] -> [DMESG-WARN][2]
> >   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10461/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
> >   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20789/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
> 
> <Error>
> <Code>AccessDenied</Code>
> <Message>Access Denied</Message>
> <RequestId>H0EEPVCR70HST0VN</RequestId>
> <HostId>493NvO3WzGD1zhkvRRk6un+6HruE4hYwXX3W4OCSZWpluozyHRqL5h3rprp7q7erF2wu5xQa0is=</HostId>
> </Error>
> 
> ???
> 
> I noticed this happening sometimes and working after some minutes/hours.
> Is there a perm going out of sync on CI systems?


Because of reasons, the patchwork post happens before syncing the
files to AWS. The file sync can fail or take an undetermined amount of
time so it's done asynchronously. Typically the files get synced
within around 2 minutes of posting to patchwork but sometimes (~once a
month) sync fails and the files get there as part of the next test
result sync job.


-- 
Petri Latvala
