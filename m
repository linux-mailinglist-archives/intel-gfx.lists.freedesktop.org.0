Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C0F7FDF57
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 19:31:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DEE010E206;
	Wed, 29 Nov 2023 18:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F35A110E206
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 18:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701282698; x=1732818698;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=PSRQKOQswLcE4Krb5h38IyRS6ZQsH7Z13iT1KvDSsKI=;
 b=KRPtMZivhJC9ugYCkhkIf2PvPf2zvZoGTCsIlHKaXaWjv2nP7l/dhUU6
 vKw7iFMJUHyRUyTTzWSUXk6fM/mnfnCbbV1fLQzFO/H37K5aRjBvGggkZ
 YxtkLn75/Zk963q7Q8iqGbXEu1GQIVO9elKye5kBkTuwWhjr2G+6XHeGC
 VNWoBoAI/46FOnT/LWXqrzlEcM8pNK8255oXuFtSaz2FKSUraKkCVQ+JR
 A7toLfblm7GV/tP1hJqaPYDv02NAvmMlKIeviwIi3WiUoZSbBJPUuO6yW
 GN91OeFjFlJGDbwO3XelGjPZuYJaKRWITkZDzSPjm09ZFHElFDhtxYB8F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="424359014"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="424359014"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 10:31:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="745349699"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="745349699"
Received: from dstavrak-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.61])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 10:31:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kevin Quillen <kevinquillen@gmail.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <CAAqKzADznzur3Xag0oDFm4ifdWZSuqCQj85O+uYx=hB5fAq1Og@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <CAAqKzADznzur3Xag0oDFm4ifdWZSuqCQj85O+uYx=hB5fAq1Og@mail.gmail.com>
Date: Wed, 29 Nov 2023 20:31:33 +0200
Message-ID: <87a5qw5s3e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] Intel Arc 770m GPU won't load on Fedora 38 kernel
 versions > 6.4.12
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

On Wed, 29 Nov 2023, Kevin Quillen <kevinquillen@gmail.com> wrote:
> Posting here for visibility. I have tried up to the latest 6.6.2 kernel
> with the same result.
>
> https://bugzilla.redhat.com/show_bug.cgi?id=2248917

Please file i915 issues to the freedesktop.org gitlab according to [1].

Thanks,
Jani.


[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html


-- 
Jani Nikula, Intel
