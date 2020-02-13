Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E46615C008
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 15:06:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B2436E2E2;
	Thu, 13 Feb 2020 14:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 467496E301
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 14:05:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 06:05:56 -0800
X-IronPort-AV: E=Sophos;i="5.70,436,1574150400"; d="scan'208";a="222656954"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 06:05:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Julian Wollrath <jwollrath@web.de>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200211225410.71b043e5@saldaea>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200211225410.71b043e5@saldaea>
Date: Thu, 13 Feb 2020 16:05:51 +0200
Message-ID: <87a75my43k.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] ivybridge gpu hang with 5.6-rc1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Feb 2020, Julian Wollrath <jwollrath@web.de> wrote:
> I got a gpu hang, see attached, and the syslog instructed me to report
> it to bugs.freedesktop.org. Since it is not possible to report bugs
> there anymore (and I do not have an account) I hope, that this e-mail
> also reaches the right people.

Sorry, we haven't yet updated the links; please see:

https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
