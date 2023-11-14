Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A70277EB31D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 16:10:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE98110E448;
	Tue, 14 Nov 2023 15:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B620810E448;
 Tue, 14 Nov 2023 15:09:57 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id BCC0F20430;
 Tue, 14 Nov 2023 15:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1699974595; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5quyE9yUIXAcU/iXITKjwH9nyqmZqpL/xBc8qDwQ46Y=;
 b=OFCyOkNKgRqvb8OGy2b0+9G391OCFf/Mm0bg5Qr2sQTLGBzgfMJfdNWfFInyD8KA63Xdo0
 PI7fqCw2InkFs5yM+7MrBpOVbDS+ESjtLLfC4razjlONVJyDXrHyy5WgtIEtPJM4vAyz0v
 LCXKZ4sBRg3vee6cySWEGNn0hc7rKeE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1699974595;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5quyE9yUIXAcU/iXITKjwH9nyqmZqpL/xBc8qDwQ46Y=;
 b=CM4KCWHqYSBVTunKLrNqqBpPVoVP1q6sU15IT1RB3mD+OoIMXtshMCtGC5x84PCcEZMNZL
 5aFkd/obAopX/5Ag==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 96B2F13416;
 Tue, 14 Nov 2023 15:09:55 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id 8tb0I8ONU2UcRgAAMHmgww
 (envelope-from <tiwai@suse.de>); Tue, 14 Nov 2023 15:09:55 +0000
Date: Tue, 14 Nov 2023 16:09:55 +0100
Message-ID: <871qcsqsl8.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZVNUxZzCGcxQzqJX@intel.com>
References: <20231002193847.7134-1-maarten.lankhorst@linux.intel.com>
 <20231002193847.7134-11-maarten.lankhorst@linux.intel.com>
 <ZVNUxZzCGcxQzqJX@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) Emacs/27.2 Mule/6.0
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
Authentication-Results: smtp-out2.suse.de;
	none
X-Spam-Level: 
X-Spam-Score: -9.61
X-Spamd-Result: default: False [-9.61 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 NEURAL_HAM_LONG(-3.00)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 REPLY(-4.00)[]; RCPT_COUNT_FIVE(0.00)[5];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-1.00)[-1.000]; MID_CONTAINS_FROM(1.00)[];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; RCVD_COUNT_TWO(0.00)[2];
 RCVD_TLS_ALL(0.00)[]; BAYES_HAM(-2.51)[97.78%]
X-Spam-Flag: NO
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 11/14] ALSA: hda/intel: Move
 snd_hdac_i915_init to before probe_work.
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 alsa-devel@alsa-project.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 14 Nov 2023 12:06:45 +0100,
Ville Syrj�l� wrote:
> 
> On Mon, Oct 02, 2023 at 09:38:44PM +0200, maarten.lankhorst@linux.intel.com wrote:
> > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > 
> > Now that we can use -EPROBE_DEFER, it's no longer required to spin off
> > the snd_hdac_i915_init into a workqueue.
> > 
> > Use the -EPROBE_DEFER mechanism instead, which must be returned in the
> > probe function.
> 
> This completely broke i915 audio!
> 
> I also can't see any trace of this stuff ever being posted to 
> intel-gfx so it never went through the CI.
> 
> Please fix or revert ASAP.

It's hard to judge without any log nor h/w details (as a typical bug
report from a developer :)

As a blind shot, does the patch below fix your case?


thanks,

Takashi

-- 8< --
--- a/sound/pci/hda/hda_intel.c
+++ b/sound/pci/hda/hda_intel.c
@@ -2141,6 +2141,9 @@ static int azx_probe(struct pci_dev *pci,
 	if (chip->driver_caps & AZX_DCAPS_I915_COMPONENT) {
 		err = snd_hdac_i915_init(azx_bus(chip));
 		if (err < 0) {
+			if (err == -EPROBE_DEFER)
+				goto out_free;
+
 			/* if the controller is bound only with HDMI/DP
 			 * (for HSW and BDW), we need to abort the probe;
 			 * for other chips, still continue probing as other
