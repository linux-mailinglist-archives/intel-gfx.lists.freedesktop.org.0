Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A087B6573
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 11:26:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CE710E039;
	Tue,  3 Oct 2023 09:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3052410E039
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696325213; x=1727861213;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5kVHz8kvf//w9xYjjf9NyYlM4jxkWPxnkeL7yT50e+0=;
 b=SmtxAFRLx3Rj9W4e1wZHv6TvwJMXYYXvMpLjHqSfPgpLqXqPsxwj5fac
 gDcgTMVhIraht0J5v7siLUi6vncPDJVssMTEC6K+HL7LVv0n/lZDf1I1p
 Hg0X+IayIs/RRspRk0pmCFniXFSTdHo3+8X4mC/BmCwbU7Wv/RFMLl9B7
 hbVDBfhondDTalEZ06Z5pG/GMsPxy5clD9IwefGFSSQv7jgweajTgucZN
 3iSlJIQ431nAtTZhl2F3F+wWYaKtOMC0Zfpsjz+5x4xLKmY6vwhU6UKsX
 3cXZdV31hFN8GwCXQgpdyIJ5yl1kbjVRVBS9CcdEnMaKlDU6gfWzhh3QW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="4395253"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; 
   d="scan'208";a="4395253"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:26:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="700638495"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="700638495"
Received: from leejiahx-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.172.202])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:26:33 -0700
Date: Tue, 3 Oct 2023 11:26:27 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZRveQ1VawFhdb3Fi@ashyti-mobl2.lan>
References: <20231002140742.933530-1-jonathan.cavitt@intel.com>
 <169629389488.4380.9451698138898795961@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <169629389488.4380.9451698138898795961@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_Invalidate_the_TLBs_on_each_GT?=
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

> Possible regressions
> 
>   • igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3:
>       □ shard-dg2: PASS -> INCOMPLETE

I believe this is not caused by this patch. I'm going to push it.

Andi
