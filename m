Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C666D73824B
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 13:25:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BB4C10E444;
	Wed, 21 Jun 2023 11:25:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09CC010E451
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 11:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687346729; x=1718882729;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kj8bws7Brpe0EFZ8yZ/ZbRpmxlpoJ6ec8bmLCKeSIwE=;
 b=RB8Ta332+KnGo7mMAKqADw0TWp1ZNuQ4AD9Nco4uWNYExCXoW67zoonf
 QHRBor6l+C3L+DOOOQKMlFjay2kAiF2j4p4awDLg7TM+EMsZLzEfcBhzt
 WmJbp0/GMmU1Abd1QzNCv4GM92s7548Vzvux8m7JhKrvKNEgEMraYMEhR
 HDBEIvfBJXvBd1v8Ugp0NSCBmSF+uvWKXhuZ3JxNwfRfkJrsW39nuYhep
 JVaOvFGG3ZcndtwFCoJLQ01OnQcT/+EMIvp+q40o4AjADiRfEs8+VZk3b
 EEgcyiukh/guN7gZKAE6rE9WOkovIzhKYrigC7z4b05dCGHLvyXqZSOlp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="349875849"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="349875849"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 04:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="714440262"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="714440262"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 04:25:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <6b22396b-2667-8f69-06db-8ee5a9b775d0@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
 <87y1kef64p.fsf@intel.com>
 <6b22396b-2667-8f69-06db-8ee5a9b775d0@linux.intel.com>
Date: Wed, 21 Jun 2023 14:25:04 +0300
Message-ID: <87legd2h2n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 00/11] Replace acronym with full platform
 name in defines.
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

On Wed, 21 Jun 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> Historically we were not avoiding churn if we could sense a real
> gain.

I tried but failed to say, if we're going to churn, let's at least go
through this properly instead of churning, and then churning again, and
again.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
