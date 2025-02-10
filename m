Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CD5A2EF90
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 15:22:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 773DF10E54B;
	Mon, 10 Feb 2025 14:22:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lPQN0HvT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3196A10E54B
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 14:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739197328; x=1770733328;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cAo4EDrI4LPHPLPAswQz4DfGk4vuKOdDuYXNMlu77v8=;
 b=lPQN0HvTRT/MHQwufoWrzAnO76t+XpAEUUsNf0W64FnboVdz5DIXvatD
 S4uzmhRrVWQrfVCnLEl5SUiFSEYDg8QyaBsNfP3UAZk7lzkMRmxmd3EU4
 jqnLuG/+MSroRjGd+vP/K58m83qklon0cpIzmhXkvxPTskK0LCC6u2H3H
 TcnUe5bEBV3v5Giu4n4oVSaKQd9v/1pZmjuiniIOpNB/jTDttoWvOoDYu
 c7Fm5o5GdLZOyvHn6dE7Xnco8qPvmY6iu7AHepgQpUGsB4KiOOowzNVaS
 qWvdm/kZIB1eeV+0qs6ptf0MQCf7hJeR6Ihk5Ye3uPooYV+l2EKG4m339 g==;
X-CSE-ConnectionGUID: XnBUsRsdSH6bgJKq0wBxkg==
X-CSE-MsgGUID: rHjfl1/YRHm58+p0yamfkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="42618823"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="42618823"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 06:22:07 -0800
X-CSE-ConnectionGUID: 9TA8IR24TLSFAGL3/cUrLg==
X-CSE-MsgGUID: PqHn8oAqRHCD8TqlQFRfww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="117268234"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.18])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 06:22:07 -0800
Date: Mon, 10 Feb 2025 15:22:03 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/pcode: Fix the coding style
Message-ID: <Z6oLeQjRUatMGgAs@ashyti-mobl2.lan>
References: <20250210140924.1364158-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250210140924.1364158-1-nitin.r.gote@intel.com>
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

Hi Nitin,

On Mon, Feb 10, 2025 at 07:39:24PM +0530, Nitin Gote wrote:
> Prefer binary operator at the end of the previous
> line instead of putting operator at the start of
> the next line as per coding style.

I'm not finding any documentation for this change, where did you
take it?

Andi
