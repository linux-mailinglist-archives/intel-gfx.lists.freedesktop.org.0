Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8861A647F73
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 09:42:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA5D910E504;
	Fri,  9 Dec 2022 08:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D2810E504
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 08:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670575372; x=1702111372;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=kIRgCfYgDmRWOiXbDjhYipu+Iwvtd6xLf7NkbullC7I=;
 b=FB+6Jj8IZLVqXPfhWS5IKRcFc3ZGzvOODYeo4/XVcEhPsGYJ+Pvj0YB+
 +0r8GghVEmsN7sgav8oAuo7PT7V71u10Taun9rZnp+PjpcB72rbCuyn39
 8df50HVjl7lQkHXU9waAUr2HNb+XJNGCv+8FDDg3GVYINOBOyv2wCdagc
 O2MPWZfjuBAYGEn9WvdviyoCuLcCwGnOtWjnBNLsAJuxXeQ6vRX0jmsLF
 5VmpAnWGEnMhrmMpTLzu/V/p8ok5uYNWW0659xoA4z7fuGAJ6ZiZDzuRa
 WDPRKiLpl6T46y1Y9Jub56gS0RERF+ayHnYKuEwDqUtu4YGF4nUolQJ1h w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="297766987"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="297766987"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 00:42:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="753950171"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="753950171"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 00:42:26 -0800
Date: Fri, 9 Dec 2022 10:42:07 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: =?ISO-8859-2?Q?Amadeusz_S=B3awi=F1ski?=
 <amadeuszx.slawinski@linux.intel.com>
In-Reply-To: <5dd6e067-bc93-ad01-8cf2-3bb5c9a45443@linux.intel.com>
Message-ID: <alpine.DEB.2.22.394.2212091037140.3532114@eliteleevi.tm.intel.com>
References: <20221208154358.3848764-1-kai.vehmanen@linux.intel.com>
 <20221208154358.3848764-2-kai.vehmanen@linux.intel.com>
 <5dd6e067-bc93-ad01-8cf2-3bb5c9a45443@linux.intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="-318106570-1563028819-1670575331=:3532114"
Subject: Re: [Intel-gfx] [PATCH 1/3] ALSA: hda/hdmi: fix i915 silent stream
 programming flow
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
Cc: Alsa-devel <alsa-devel@alsa-project.org>, Takashi Iwai <tiwai@suse.de>,
 intel-gfx@lists.freedesktop.org,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-1563028819-1670575331=:3532114
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

Hi,

On Thu, 8 Dec 2022, Amadeusz Sławiński wrote:

> On 12/8/2022 4:43 PM, Kai Vehmanen wrote:
> > @@ -2879,9 +2879,28 @@ static int i915_hsw_setup_stream(struct hda_codec
> > *codec, hda_nid_t cvt_nid,
> >   				 hda_nid_t pin_nid, int dev_id, u32
> > stream_tag,
> >   				 int format)
> >   {
> > +	struct hdmi_spec *spec = codec->spec;
> > +	int pin_idx = pin_id_to_pin_index(codec, pin_nid, dev_id);
> 
> Shouldn't return value from pin_id_to_pin_index() be checked? It seems that it
> can return -EINVAL.

that's a good point. I think we are safe with current code as setup_stream 
ops is only called from generic_hdmi_playback_pcm_prepare() and 
spec->ops.setup_stream() there is only called with a valid pin. But this 
leaves room for future errors, and passing negative index to get_pin() is 
pretty bad. Let me send a V2 later today.

Thanks for the review!

Br, Kai
---318106570-1563028819-1670575331=:3532114--
