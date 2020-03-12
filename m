Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29031183787
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 18:28:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A09E6E252;
	Thu, 12 Mar 2020 17:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF226E252
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 17:28:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 10:28:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="236918219"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga008.jf.intel.com with ESMTP; 12 Mar 2020 10:27:59 -0700
Date: Thu, 12 Mar 2020 19:27:58 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200310182522.GN13686@intel.com>
Message-ID: <alpine.DEB.2.21.2003121833570.2957@eliteleevi.tm.intel.com>
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
 <20200102182845.GB11904@intel.com>
 <alpine.DEB.2.21.2001031703180.16459@zeliteleevi>
 <20200106164903.GA1755221@mdroper-desk1.amr.corp.intel.com>
 <alpine.DEB.2.21.2003061749190.2957@eliteleevi.tm.intel.com>
 <s5h4kuxssqr.wl-tiwai@suse.de> <20200310134114.GE13686@intel.com>
 <alpine.DEB.2.21.2003101848170.2957@eliteleevi.tm.intel.com>
 <20200310182522.GN13686@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="-318106570-1479294122-1584033309=:2957"
Content-ID: <alpine.DEB.2.21.2003121915200.2957@eliteleevi.tm.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Limit audio CDCLK>=2*BCLK
 constraint back to GLK only
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-1479294122-1584033309=:2957
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.21.2003121915201.2957@eliteleevi.tm.intel.com>

Hey,

On Tue, 10 Mar 2020, Ville Syrjälä wrote:

> On Tue, Mar 10, 2020 at 07:18:58PM +0200, Kai Vehmanen wrote:
>> On Tue, 10 Mar 2020, Ville Syrjälä wrote:
>>> audio at init time. And we could maybe try to remove the modeset from the
>>> put_power() so that at least if you get a blink it's just the one. I did
>>
>> Hmm, this is interesting and maybe a better compromise for the in-between 
>> generations. Could it be as simple as not setting 
> 
> The logic around the cdclk computation is still a bit messy.
> 
> First draft of just doing the lazy force_min_cdclk reduction in put_power():
> git://github.com/vsyrjala/linux.git no_cdclk_in_audio_put_power
> 
> Very lightly smoke tested, but not sure if it achieves anything useful :P

I tested this today and no issues found. I can see clock bumped if there 
is audio activity, but clock is kept after audio goes back to sleep. 
But then e.g. at next display-off timeout, clk is brought back down.
So works as expected.

But, but, then I also tested...

>> One problematic scenario that this doesn't cover:
>>  - a single display is used (at low cdclk), and 
>>  - audio block goes to runtime suspend while display stays up. 
>> 
>> Upon resume (for e.g. UI notification sound), audio will initialize the 
>> HDA bus and call get_power() on i915, even if the notification goes to 

Now actually hitting this requires some effort. On most systems I tried, 
with display active, the clock will stay above the limit for other 
reasons, but yup, when this happens, it is pretty, pretty bad.

Your no_cdclk_in_audio_put_power patch does reduce the level of annoyance 
also in this case -- you only get one flash instead of two. But does not 
seem acceptable still. If you happen to have a system where the conditions 
are met, then this happens all the time. In case of UI notification sounds 
being the trigger, we could consider the visual flash as a feature, but 
probably not widely appreciated. ;) .. and especially as you cannot turn 
it off.

So I think this starts to look that we should move calling glk_force_audio 
to bind/unbind pair. I can make a patch for this.

>> I just also noted if we keep the glk_force_audio function, we need to get 
>> rid of the hardcoded 96Mhz BCLK value that is used now, and instead dig up 
>
> I think when I last complained about the assumed 96 MHz BCLK
> people said "48 MHz never happens". But I guess it can be made
> to happen?

Indeed the recommendation still is 96 Mhz and that will be the dominant 
value, but 48 Mhz is still an option. To keep the system open for 
configurability, I think the bind/unbind restriction should take the 
effective BCLK value into account. So if 48 Mhz is chosen, you get the 
benefits with just a BIOS change and no need to muck around the 
kernel as well.

Br, Kai
---318106570-1479294122-1584033309=:2957
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

---318106570-1479294122-1584033309=:2957--
