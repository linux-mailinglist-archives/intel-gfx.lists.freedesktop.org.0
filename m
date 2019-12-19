Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA7412664F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 17:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F09D6E354;
	Thu, 19 Dec 2019 16:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DBD36E354
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 16:00:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 08:00:54 -0800
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="210502024"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 08:00:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org
In-Reply-To: <e13bb7e03399471d87230d2c6296c767@SOC-EX01V.e01.socionext.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191107071441.1067-1-yamada.masahiro@socionext.com>
 <87a7982hwc.fsf@intel.com>
 <e13bb7e03399471d87230d2c6296c767@SOC-EX01V.e01.socionext.com>
Date: Thu, 19 Dec 2019 18:00:50 +0200
Message-ID: <87tv5wwbil.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] kbuild: remove header compile test
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 08 Nov 2019, <yamada.masahiro@socionext.com> wrote:
> Could check the attached three patches?
>
> i915 is the only driver passionate about the header self-contained'ness.
> It would not be horrible to implement a own build rule in i915 Makefile.
>
> 0003 decreases the amount of code.
>
> 0001 and 0002 are trivial and can go in independently.
> ( I just send them to intel-gfx ML)

Sorry for the delayed response!

Thanks for doing this. I saw patches 1 and 2 were merged already.

I tweaked patch 3 slightly and resent it to intel-gfx [1].

BR,
Jani.


[1] http://patchwork.freedesktop.org/patch/msgid/20191219155652.2666-3-jani.nikula@intel.com


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
