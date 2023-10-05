Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E91D7B9D2B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 15:03:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5AA810E3ED;
	Thu,  5 Oct 2023 13:03:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82DFF10E3ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 13:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696511022; x=1728047022;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=e3Ly11D9WX68Ts8nlQ2oVmy2CVPiIKRaQG3LHfyo6hM=;
 b=Ho9tbLMMkwLV2cOJuqTbc8ZTKhfd8UUXQMCXn1hm61Y/g4Rz1+hEhaIB
 H1DMCnTB2vDfJG+kViP87QkP3OKVKjcKxXBq6iSQzGsk3mepkmhw+2S1x
 ofs47bJ/BSfO72/CBao+NZYxKj5Ypsh6XtmY61Qnd4qQSZofmMg9Au+pE
 LgEsZtPnmS/KqXboq2A9mkThX8pE6GOBZPG6xDLpdHBNhR2yW4SpsCiad
 Z1LO8oVuQ7a3gMetR6lapDheFxBrvixaIsZ9/+rtL/8AukMD00KDFZUXk
 mUKR8nll7Ll3kG7h2MUl1dsHP0mjAQwCoIc4Bv/kx8w7wXzToY3cT6sAg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="386318653"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="386318653"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:03:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="786959791"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="786959791"
Received: from yklum-mobl.gar.corp.intel.com (HELO intel.com) ([10.215.244.7])
 by orsmga001-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 06:03:37 -0700
Date: Thu, 5 Oct 2023 15:03:31 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZR60I2gMgjdlGaXX@ashyti-mobl2.lan>
References: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
 <169647579100.7514.15467798178604356829@emeril.freedesktop.org>
 <ZR6zVOy3GbvbuPIX@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZR6zVOy3GbvbuPIX@ashyti-mobl2.lan>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgU3Vi?=
 =?utf-8?q?ject=3A_=5BPATCH_dii-client_v6_0/4=5D_drm/i915=3A_Define_and_us?=
 =?utf-8?q?e_GuC_and_CTB_TLB_invalidation_routines?=
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

> > CI changes
> > 
> > Possible regressions
> > 
> >   • boot:
> >       □ bat-dg1-5: PASS -> FAIL
> > 
> > IGT changes
> > 
> > Possible regressions
> > 
> >   • igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
> > 
> >       □ bat-adlm-1: PASS -> INCOMPLETE
> >   • igt@kms_busy@basic@flip:
> > 
> >       □ bat-adlp-11: PASS -> ABORT
> > 
> >       □ bat-adlp-6: PASS -> INCOMPLETE
> > 
> >   • igt@kms_busy@basic@modeset:
> > 
> >       □ bat-adlp-11: PASS -> DMESG-WARN
> >   • igt@kms_force_connector_basic@force-connector-state:
> > 
> >       □ bat-rpls-1: PASS -> INCOMPLETE
> 
> Although these failures appear very consistently, they don't look
> related to your patch. But still I wonder why they show up so
> consistently.
> 
> Is anyone from the list able to provide some thoughts?

Please, ignore, they go through guc_ggtt_invalidate... the log
was hidden :-)

Andi
