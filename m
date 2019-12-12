Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 191F911C66D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 08:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A8416EC6E;
	Thu, 12 Dec 2019 07:34:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 194AE6EC6D
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 07:34:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 23:34:41 -0800
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; d="scan'208";a="207980292"
Received: from lenovo-x280.ger.corp.intel.com (HELO localhost) ([10.252.35.33])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 23:34:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157607793845.3602.10985819314849483549@jlahtine-desk.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191115101840.23921-1-jani.nikula@intel.com>
 <20191115101840.23921-2-jani.nikula@intel.com>
 <157381331724.8818.5022640832000274325@skylake-alporthouse-com>
 <878soh1jur.fsf@intel.com>
 <157381612048.8818.7421108719267545674@skylake-alporthouse-com>
 <87zhfz2lph.fsf@intel.com>
 <157607793845.3602.10985819314849483549@jlahtine-desk.ger.corp.intel.com>
Date: Thu, 12 Dec 2019 09:34:39 +0200
Message-ID: <87blse2e0g.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: make debug printer
 shown_bug_once variable to drm_i915_private
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

On Wed, 11 Dec 2019, Joonas Lahtinen <joonas.lahtinen@linux.intel.com> wrote:
> Quoting Jani Nikula (2019-12-11 12:36:10)
>> On Fri, 15 Nov 2019, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>> > Quoting Jani Nikula (2019-11-15 11:04:28)
>> >> On Fri, 15 Nov 2019, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>> >> > Quoting Jani Nikula (2019-11-15 10:18:40)
>> >> >> Get rid of the module specific static variable.
>> >> >> 
>> >> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> >> ---
>> >> >>  drivers/gpu/drm/i915/i915_drv.h   | 2 ++
>> >> >>  drivers/gpu/drm/i915/i915_utils.c | 9 ++++-----
>> >> >>  2 files changed, 6 insertions(+), 5 deletions(-)
>> >> >> 
>> >> >> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> >> >> index 1779f600fcfb..e11ee3268ae3 100644
>> >> >> --- a/drivers/gpu/drm/i915/i915_drv.h
>> >> >> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> >> >> @@ -1283,6 +1283,8 @@ struct drm_i915_private {
>> >> >>         /* Mutex to protect the above hdcp component related values. */
>> >> >>         struct mutex hdcp_comp_mutex;
>> >> >>  
>> >> >> +       bool shown_bug_once;
>> >> >> +
>> >> >>         I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
>> >> >>  
>> >> >>         /*
>> >> >> diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
>> >> >> index c47261ae86ea..f434274b0b29 100644
>> >> >> --- a/drivers/gpu/drm/i915/i915_utils.c
>> >> >> +++ b/drivers/gpu/drm/i915/i915_utils.c
>> >> >> @@ -13,11 +13,10 @@
>> >> >>                     "providing the dmesg log by booting with drm.debug=0xf"
>> >> >>  
>> >> >>  void
>> >> >> -__i915_printk(struct drm_i915_private *dev_priv, const char *level,
>> >> >> +__i915_printk(struct drm_i915_private *i915, const char *level,
>> >> >>               const char *fmt, ...)
>> >> >>  {
>> >> >> -       static bool shown_bug_once;
>> >> >> -       struct device *kdev = dev_priv->drm.dev;
>> >> >> +       struct device *kdev = i915->drm.dev;
>> >> >>         bool is_error = level[1] <= KERN_ERR[1];
>> >> >>         bool is_debug = level[1] == KERN_DEBUG[1];
>> >> >>         struct va_format vaf;
>> >> >> @@ -39,7 +38,7 @@ __i915_printk(struct drm_i915_private *dev_priv, const char *level,
>> >> >>  
>> >> >>         va_end(args);
>> >> >>  
>> >> >> -       if (is_error && !shown_bug_once) {
>> >> >> +       if (is_error && !i915->shown_bug_once) {
>> >> >>                 /*
>> >> >>                  * Ask the user to file a bug report for the error, except
>> >> >>                  * if they may have caused the bug by fiddling with unsafe
>> >> >> @@ -47,7 +46,7 @@ __i915_printk(struct drm_i915_private *dev_priv, const char *level,
>> >> >>                  */
>> >> >>                 if (!test_taint(TAINT_USER))
>> >> >>                         dev_notice(kdev, "%s", FDO_BUG_MSG);
>> >> >
>> >> > I feel this plea to the users to file a bug report should be a one-time
>> >> > thing; a true global.
>> >> 
>> >> Fair enough.
>> >> 
>> >> I am wondering if we should have a convention of naming or commenting
>> >> legit globals, both to help automation detecting new accidental ones,
>> >> and to help people figure out not to send another conversion patch such
>> >> as this.
>> >
>> > global_i915_show_bug_once
>> > module_i915_show_bug_once
>> 
>> I'd be fine with either of the prefixes. Or i915_{global,module}_ for
>
> My vote goes for i915_global_* or global_i915_* (if we could get some
> Kbuild infrastructure behind detecting global variables).

Chris suggested simply module_ or global_ on IRC (without i915 to not
mislead to thinking it's about the i915 instance). I tend to lean
towards module_ a bit because global implies visibility while here we do
mean static variables too.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
