Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0423187123
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 18:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4663F6E20A;
	Mon, 16 Mar 2020 17:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5032F6E20A
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 17:28:48 +0000 (UTC)
IronPort-SDR: Wf7ik6io6pqqNhdHH0RX/ZKsE4xF22nU94JZMEtZh/NOesLwE4J0aR8HJ9iwF3VJe3m2A2RduG
 A7oyAaAgi78w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 10:28:47 -0700
IronPort-SDR: bBtrBpMCn0YNLaBjCOSvzL+6ok6yjgnTWitt0RlfnG57mR/VL5cRcZF5FI16hGNoaia+SkbzcV
 4FUOIketdRIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,561,1574150400"; d="scan'208";a="390764445"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004.jf.intel.com with ESMTP; 16 Mar 2020 10:28:46 -0700
Date: Mon, 16 Mar 2020 19:28:45 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
In-Reply-To: <alpine.DEB.2.21.2003131816400.2957@eliteleevi.tm.intel.com>
Message-ID: <alpine.DEB.2.21.2003161921030.2957@eliteleevi.tm.intel.com>
References: <20200313144821.29592-1-kai.vehmanen@linux.intel.com>
 <20200313144821.29592-2-kai.vehmanen@linux.intel.com>
 <20200313151443.GO13686@intel.com>
 <alpine.DEB.2.21.2003131816400.2957@eliteleevi.tm.intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-318106570-740426164-1584379727=:2957"
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: move audio CDCLK constraint
 setup to bind/unbind
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

---318106570-740426164-1584379727=:2957
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT

Hey Ville and others,

On Fri, 13 Mar 2020, Kai Vehmanen wrote:
> On Fri, 13 Mar 2020, Ville Syrjälä wrote:
> Now thinking of another possibility, is it possible to hook code to 
> power-up of power domains? E.g. can I hook custom code which is executed 
[...]
> If we could reprogram AUD_FREQ_CNTRL outside the get/put_power() flow 
> (i.e. independently from audio driver), and guarantee that if the display 
> side is powered on, the link params are always correct, it might be 
> possible to get away without calling get_power() from audio controller 

... no need to answer this. I made an ugly hack directly to 
intel_display_power.c and added a hook to audio restore, but, but, this 
does not seem to help. I can still hit hangs unless I bump cdclk before 
the reset -- i.e. restoring AUD_FREQ_CNTRL is not enough.

Br, Kai
---318106570-740426164-1584379727=:2957
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

---318106570-740426164-1584379727=:2957--
