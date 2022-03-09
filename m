Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D54664D2AE7
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 09:49:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D23110E6C8;
	Wed,  9 Mar 2022 08:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31BC810E6C8
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 08:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646815738; x=1678351738;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=tWR4Vhzuy+kjXJjKGMZmuOU/Bug5xBtY1CujXwmqosE=;
 b=EBa4rI+wyhUfssrMBrrV7akIzc7L4SMr2IfVA3LeF7Z7PBqa8tyrrry1
 ixRdinpRd3cRJC2+DQynN82gUrpQltPQYo8iVXZibLjN1daiT71U6UIXS
 qgjEvdxuhIR5kGvrjBGzxsqhj5ygpUGFGRDqKMgI4tWPAaTbJP86SJYqz
 Muy1DgCNJn4PcmAiZOXQTrmEzvUnGjQiz8aPIRNo+u6aBXpD0fLgdocYu
 Ol4Ft3GJ/mVUmjS2uMbt0jHUhRJXcWtSMU0h3dhZNaJr3hj16KTMmMVDL
 aXW8alOkuMP2em3bB8UD5SnIA6BDxQbRPgEoVCQQGqUfkR+U7duiwuhLK A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254654281"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="254654281"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 00:48:48 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="642076533"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 00:48:46 -0800
Date: Wed, 9 Mar 2022 10:39:40 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <f9f6f831-a05d-2d20-8ade-ab717f342ba5@linux.intel.com>
Message-ID: <alpine.DEB.2.22.394.2203091035350.3088432@eliteleevi.tm.intel.com>
References: <20220308172759.920551-1-kai.vehmanen@linux.intel.com>
 <f9f6f831-a05d-2d20-8ade-ab717f342ba5@linux.intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v2] ALSA: hda/i915 - avoid hung task timeout
 in i915 wait
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
Cc: alsa-devel@alsa-project.org, Paul Menzel <pmenzel+alsa-devel@molgen.mpg.de>,
 Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 amadeuszx.slawinski@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, 9 Mar 2022, Tvrtko Ursulin wrote:

> > -			/* 60s timeout */
> 
> Where does this 60s come from and why is the fix to work around
> DEFAULT_HUNG_TASK_TIMEOUT in a hacky way deemed okay? For instance would
> limiting the wait here to whatever the kconfig is set to be an option?

this was discussed in
https://lists.freedesktop.org/archives/intel-gfx/2022-February/290821.html
... and that thread concluded it's cleaner to split the wait than try
to figure out hung-task configuration from middle of audio driver.

The 60sec timeout comes from 2019 patch "ALSA: hda: Extend i915 component 
bind timeout" to fix an issue reported by Paul Menzel (cc'ed).

This patch keeps the timeout intact.
Br, Kai
