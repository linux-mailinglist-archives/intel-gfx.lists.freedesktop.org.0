Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3765BFCCAE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 541C610E7E4;
	Wed, 22 Oct 2025 15:11:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.cz header.i=@suse.cz header.b="KvGIJkvP";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="bJK2GE1+";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="0ijxDsaR";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="PQuY7v/H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FC7E10E7E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Oct 2025 15:11:36 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id E80E51F397;
 Wed, 22 Oct 2025 15:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1761145891; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CsSvJ/2bgLjO9qXtCj9J9tkGgNDOvDHb7cViGSwafXE=;
 b=KvGIJkvPGwlJY5D3FACqrH1givn/dPfb5XDdtRsIz+6sw5I0NtGLMPP40KEs6/Uk85CvZe
 cdtW17HImlEOcnkdEOayR1vxcWPHQvWkglaY5FwebrQExnjZvwRQ4ZdsyLWo0oyT15r/vG
 BXiwUlvgEnGU5CW5kRiGDZpZeXk7HGs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1761145891;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CsSvJ/2bgLjO9qXtCj9J9tkGgNDOvDHb7cViGSwafXE=;
 b=bJK2GE1+o+fS/nl9liXiozVQRW/KwMF1yESwBndqgI+wRRBvnyA9nfeQtW8oFZFy7EZtsM
 at6GrsLe6Yptm7Aw==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=0ijxDsaR;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b="PQuY7v/H"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1761145886; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CsSvJ/2bgLjO9qXtCj9J9tkGgNDOvDHb7cViGSwafXE=;
 b=0ijxDsaRSH6BfA8mMOthFyaP8K1VHU4AFSW+oRhwjrsiYcJnEsuLyg7nDYfp2mK6HcI1Bb
 3Z3vJW7MZQDvLV08k8klMRV0jGyOVuFWKBpV/+7srT44ghlJ55VCFfAmUpg/c1zWfYhp4n
 2iIWRIIdlKyLMj04kBKgd+ju+RiJHRQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1761145886;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CsSvJ/2bgLjO9qXtCj9J9tkGgNDOvDHb7cViGSwafXE=;
 b=PQuY7v/HKu81HwXFSc7P9Gl5CXC03v32JMtZa2wLRcevrokKDtWANzdHHyuLej5/j5akoU
 CfpBQaOGTe1n7GDw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id B0F3F13AAC;
 Wed, 22 Oct 2025 15:11:26 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id BNxoJx70+Gh6TAAAD6G6ig
 (envelope-from <pvorel@suse.cz>); Wed, 22 Oct 2025 15:11:26 +0000
From: Petr Vorel <pvorel@suse.cz>
To: ville.syrjala@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 pvorel@suse.cz
Subject: Re: [PATCH 2/3] drm/i915/dmc: Fixup TGL/ADL-S HRR event handler type
Date: Wed, 22 Oct 2025 17:11:20 +0200
Message-ID: <20251022151120.9450-1-pvorel@suse.cz>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251022100718.24803-3-ville.syrjala@linux.intel.com>
References: <20251022100718.24803-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E80E51F397
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [-3.01 / 50.00]; BAYES_HAM(-3.00)[99.99%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_CONTAINS_FROM(1.00)[];
 R_MISSING_CHARSET(0.50)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; TO_DN_NONE(0.00)[]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_HAS_DN(0.00)[];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 MIME_TRACE(0.00)[0:+]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 RCVD_TLS_ALL(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 FROM_EQ_ENVFROM(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCPT_COUNT_THREE(0.00)[4]; DKIM_TRACE(0.00)[suse.cz:+]
X-Rspamd-Action: no action
X-Spam-Flag: NO
X-Spam-Score: -3.01
X-Spam-Level: 
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

Hi Ville, all,

> TGL/ADL-S DMC firmware incorrectly uses the undelayed vblank
> trigger for the HRR event, when it should be using the delayed
> vblank trigger.
> 
> Fixed DMC firmware was never relaesed and isntead the Windows
> driver just fixes this up by hand. Follow suit.
> 
> Not that we actually enable the HRR event currently. But let's
> fix up the event ID, just in case someone ever needs to enable
> this.

LGTM.

Reviewed-by: Petr Vorel <pvorel@suse.cz>

Kind regards,
Petr
