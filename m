Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9AFABB4E7
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 08:12:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16EC10E332;
	Mon, 19 May 2025 06:12:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="N/Ag7cHA";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="zT1pVULC";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="kW3gKi9V";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="ldSkkSkJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6672A10E332
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 May 2025 06:12:39 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id AF431201DA;
 Mon, 19 May 2025 06:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1747635158; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iOiVSF/7UKI1Ua9E1RC7/QJH6JErvP/rktnZ/eW7JMc=;
 b=N/Ag7cHAGm93NnEz+Ld7g9PBFnqzFvLz/fDNcfeeoAFQWCnp9MH6ZLy5S70oWJWz5m0ZPH
 N1QqUotLIm3pgoNYOb3Jw1htUCKFCgdzjwZnxUpEyuO0D9VvO6Jpxs9fCwk7gFpQ1Fvdul
 BVVDDe00ULI0iS1jI0Wq0Vw0kGzZKhM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1747635158;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iOiVSF/7UKI1Ua9E1RC7/QJH6JErvP/rktnZ/eW7JMc=;
 b=zT1pVULCm6Yw1iNjMQXHnkVibxIkzf6k1Sumaqvhxdc89GlIoW9O70ternmdF5SaAhd+ur
 1pXY+nTqvs12H6Dg==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=kW3gKi9V;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=ldSkkSkJ
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1747635157; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iOiVSF/7UKI1Ua9E1RC7/QJH6JErvP/rktnZ/eW7JMc=;
 b=kW3gKi9VXgtwShQidSMuGJmzRdj5PGTRNU6geGuui+luN3vcScpsndeyVPt4AbpzgUEsvS
 p/UZyurwE6A8yob7MHfCD3FkW226Kd7UnWSZGI/SSGw8+sdZh4a2As4CBAXQGG0QTpy7wz
 xbrTDDXqQhnndW1POnlZxKijIky5MMs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1747635157;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iOiVSF/7UKI1Ua9E1RC7/QJH6JErvP/rktnZ/eW7JMc=;
 b=ldSkkSkJLXNi2cZL5gDVThfVVNeb43QxuSqw3yYk1GjhXItF7HtU+MIqh3qBmoghJsgQsQ
 iipHmt7uOcnk8nBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 68C5213A30;
 Mon, 19 May 2025 06:12:37 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id t6ouF9XLKmjfQgAAD6G6ig
 (envelope-from <hare@suse.de>); Mon, 19 May 2025 06:12:37 +0000
Message-ID: <29d05b80-1381-436c-8c6a-ec30113c069d@suse.de>
Date: Mon, 19 May 2025 08:12:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: ahci + intel iGPU problems
To: Niklas Cassel <cassel@kernel.org>, Damien Le Moal <dlemoal@kernel.org>,
 kernel-dev@rsta79.anonaddy.me
Cc: linux-ide@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <aCdAvkKOfBEQCnZd@ryzen>
Content-Language: en-US
From: Hannes Reinecke <hare@suse.de>
In-Reply-To: <aCdAvkKOfBEQCnZd@ryzen>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-4.51 / 50.00]; BAYES_HAM(-3.00)[99.99%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-0.998]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; TO_DN_SOME(0.00)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 MIME_TRACE(0.00)[0:+]; FUZZY_BLOCKED(0.00)[rspamd.com];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 ARC_NA(0.00)[]; FROM_HAS_DN(0.00)[]; RCPT_COUNT_FIVE(0.00)[5];
 DNSWL_BLOCKED(0.00)[2a07:de40:b281:106:10:150:64:167:received,2a07:de40:b281:104:10:150:64:97:from];
 RCVD_COUNT_TWO(0.00)[2]; FROM_EQ_ENVFROM(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; MID_RHS_MATCH_FROM(0.00)[];
 DKIM_TRACE(0.00)[suse.de:+]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RCVD_TLS_ALL(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:rdns,
 imap1.dmz-prg2.suse.org:helo, suse.de:mid, suse.de:email, suse.de:dkim]
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Score: -4.51
X-Rspamd-Queue-Id: AF431201DA
X-Spam-Level: 
X-Spam-Flag: NO
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

On 5/16/25 15:42, Niklas Cassel wrote:
> Hello there,
> 
> This bug report came in to Serial ATA bugzilla recently:
> https://bugzilla.kernel.org/show_bug.cgi?id=220111
> 
> The user claims to have bisected a problem to commit
> 7627a0edef54 ("ata: ahci: Drop low power policy board type")
> 
> However, when looking at the dmesg from:
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14213
> (see dmesg inlined at the end of this email), I cannot see a
> single AHCI, SCSI or libata timeout, or any other error that
> would indicate that there is a problem with the drive.
> 
> I do however see a bunch of i915 timeouts.
> 
The nasty thing about i915 is that is reconfigures the _root bride_.
As the i915 device is always built-in, the driver 'knows' what's
best for the root bridge, and reconfigures it.
(IIRC this happens if you several outputs and for some reason they
are not configured correctly.)
And if you are particularly unlucky the driver configures it wrong,
killing other devices in the process. That happened to us once, where
the i915 driver ended up killing the NVMe device.

Please check the i915 output configuration, and try to get a PCI
configuration readout before and after loading the i915 driver.

Cheers,

Hannes
-- 
Dr. Hannes Reinecke                  Kernel Storage Architect
hare@suse.de                                +49 911 74053 688
SUSE Software Solutions GmbH, Frankenstr. 146, 90461 Nürnberg
HRB 36809 (AG Nürnberg), GF: I. Totev, A. McDonald, W. Knoblich
