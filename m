Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9951A3590
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 16:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B16BB6E165;
	Thu,  9 Apr 2020 14:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF1BF6E165
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 14:14:05 +0000 (UTC)
IronPort-SDR: NHZNL7kh1tuZtGw39+3RGFl8ilWEwJouXoJeMd0IaD8MRXaEc5FLEfiLeA3FGqpuf2PFOHOhs0
 EYycZeIinoVg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 07:14:05 -0700
IronPort-SDR: 9znV8BupEgiVdFUabhXkuWoYfrhYU3W4gQz5vPw3oSSjsj7qafog6F7V7CAGJoG0V+oaLy5xax
 Axw0C+r1xNdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,363,1580803200"; d="scan'208";a="255156942"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga006.jf.intel.com with ESMTP; 09 Apr 2020 07:14:04 -0700
Date: Thu, 9 Apr 2020 17:14:01 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200330144421.11632-1-kai.vehmanen@linux.intel.com>
Message-ID: <alpine.DEB.2.21.2004091657320.2957@eliteleevi.tm.intel.com>
References: <20200330144421.11632-1-kai.vehmanen@linux.intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RESEND PATCH] drm/i915: do AUD_FREQ_CNTRL state
 save on all gen9+ platforms
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

Hey,

On Mon, 30 Mar 2020, Kai Vehmanen wrote:

> Replace the TGL/ICL specific platform checks with a more generic check
> using INTEL_GEN(). Fixes bug with broken audio after S3 resume on JSL
> platforms.

I would be (gently) beaten with a stick on alsa-devel for sending this
type of content free ping, but I still dare to seek your input on what is 
the proper way to get attention to a patch that are seemingly forever 
stuck on the review sideline.

I've sent this on 13.3., resend on 30.3.. Should I just keep on sending 
resends and let the system work (this is the alsa-devel practise), or 
should I start to contact potential reviewers with more direct asks?

Tests seem to all pass and this is pretty important for anyone using JSL 
platforms (you lose HDMI/DP audio after first S3 suspend otherwise):
https://patchwork.freedesktop.org/series/74664/

Br, Kai
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
