Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0D15338C7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 10:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42F0910E66C;
	Wed, 25 May 2022 08:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D3710E5AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 08:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653468525; x=1685004525;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FpXNYmaO9B9bnD9Xo9TTEmr6YPcCMdOmYMBTpun3xuQ=;
 b=G0TGcjBnLHqn2IkWyn/7YkLggs3X01EcvMfHLvJFh0+qQQRIq8950Wvs
 gmR1ToZl/CNisiaFG59qIknJgHNJYBsAFFtnng3gxJUXcUZICOJ++2bl4
 OianDlWI3lVzcWC4ELPfjvJlamo2RFevrrKJxbgS9vYY8s8ytpKzRGCGd
 XQNFthYImZBmv/sX8VWLYgGYFICjtALjxXbvfmpYGRyvcNCGYNoP9etKd
 a78dGXyz0d84hd5it0WNGGeE34jWGM1F0YiQ5AZTnW6EyqzCbj1WVQQF4
 FvUnoEDcE6qYKaifoHhr+jd6MekFv3BozQ1MQ+2ZXj6zT+CeWX9aw6jiX w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="334403088"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="334403088"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 01:48:45 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="548901580"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 01:48:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
In-Reply-To: <CO6PR11MB563663D4A8E3C74EC75A7AB7DED79@CO6PR11MB5636.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1653381821.git.jani.nikula@intel.com>
 <165339204539.14320.1829873293726340711@emeril.freedesktop.org>
 <874k1fw49u.fsf@intel.com>
 <CO6PR11MB563663D4A8E3C74EC75A7AB7DED79@CO6PR11MB5636.namprd11.prod.outlook.com>
Date: Wed, 25 May 2022 11:48:41 +0300
Message-ID: <87k0aauhee.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_expand_on_struct_drm=5Fedid_usage?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 24 May 2022, "Sarvela, Tomi P" <tomi.p.sarvela@intel.com> wrote:
> Both links work. Patchwork posting is done before results are synced to
> upstream service. This is noticeable with 404 if the transfer is slow.
> The issue is known and will be fixed when priorities allow.

Right, I was just being impatient hitting reload. Thanks for the
explanation, again.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
