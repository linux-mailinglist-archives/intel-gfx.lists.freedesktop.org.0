Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGGgGbNp4mnk5gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 19:11:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE6A41D6E6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 19:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D45510EA5A;
	Fri, 17 Apr 2026 17:11:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.cz header.i=@suse.cz header.b="p8f9HgC8";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="xpC/kqsu";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="p8f9HgC8";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="xpC/kqsu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 842CA10EA5A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2026 17:11:07 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 3B0596A9CD;
 Fri, 17 Apr 2026 17:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1776445866;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZoNpbTJG3FA+Y6/ojdio+/PmnI+Bl2TOJlXEMWDNRPc=;
 b=p8f9HgC81RqnGM4durgZx3xfS4BOkcEkxseOTwAdLLv3T5iUFg+alC5QLwazifO2qYMvyZ
 9NMDXV3nZW4dz2svQgotp1+E3heJ8pENfVcs+XYKpxZIiKX7ftYWqAKG/MagbhGWIvTb3S
 9xSw9wniFDqH5J5SWrwuNjpPAq15+DY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1776445866;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZoNpbTJG3FA+Y6/ojdio+/PmnI+Bl2TOJlXEMWDNRPc=;
 b=xpC/kqsu09Mh0R9uSJUz2I83Sy/6JwlEUoGqu5nmmrOkJp0YpXCkeQagMjbGw54q+Fjid/
 YcD+YEMHDw6JvXCw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1776445866;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZoNpbTJG3FA+Y6/ojdio+/PmnI+Bl2TOJlXEMWDNRPc=;
 b=p8f9HgC81RqnGM4durgZx3xfS4BOkcEkxseOTwAdLLv3T5iUFg+alC5QLwazifO2qYMvyZ
 9NMDXV3nZW4dz2svQgotp1+E3heJ8pENfVcs+XYKpxZIiKX7ftYWqAKG/MagbhGWIvTb3S
 9xSw9wniFDqH5J5SWrwuNjpPAq15+DY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1776445866;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZoNpbTJG3FA+Y6/ojdio+/PmnI+Bl2TOJlXEMWDNRPc=;
 b=xpC/kqsu09Mh0R9uSJUz2I83Sy/6JwlEUoGqu5nmmrOkJp0YpXCkeQagMjbGw54q+Fjid/
 YcD+YEMHDw6JvXCw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id BF5EC593AE;
 Fri, 17 Apr 2026 17:11:05 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id 0EDgLKlp4mn4RAAAD6G6ig
 (envelope-from <pvorel@suse.cz>); Fri, 17 Apr 2026 17:11:05 +0000
Date: Fri, 17 Apr 2026 19:11:04 +0200
From: Petr Vorel <pvorel@suse.cz>
To: =?iso-8859-2?Q?Micha=B3?= Grzelak <michal.grzelak@intel.com>
Cc: Oliver Sang <oliver.sang@intel.com>, lkp@intel.com,
 intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>, oe-lkp@lists.linux.dev,
 intel-xe@lists.freedesktop.org, ltp@lists.linux.it,
 linux-integrity@vger.kernel.org, Mimi Zohar <zohar@linux.ibm.com>
Subject: Re: [LTP] [PATCH v1 15/16] drm/i915/bios: search for VBT #57 by
 default
Message-ID: <20260417171104.GB426937@pevik>
References: <20260331183332.1773886-16-michal.grzelak@intel.com>
 <202604150702.d409a2b6-lkp@intel.com>
 <20260416064051.GA281695@pevik>
 <aeCShTeoW+lmHjHF@xsang-OptiPlex-9020>
 <2df6f595-da57-0668-951c-657c5c876333@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-2
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2df6f595-da57-0668-951c-657c5c876333@intel.com>
X-Spam-Score: -3.50
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
Reply-To: Petr Vorel <pvorel@suse.cz>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:michal.grzelak@intel.com,m:oliver.sang@intel.com,m:lkp@intel.com,m:jani.nikula@linux.intel.com,m:oe-lkp@lists.linux.dev,m:intel-xe@lists.freedesktop.org,m:ltp@lists.linux.it,m:linux-integrity@vger.kernel.org,m:zohar@linux.ibm.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[suse.cz];
	FORGED_SENDER(0.00)[pvorel@suse.cz,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,suse.cz:dkim,suse.cz:replyto];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[suse.cz:+];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[pvorel@suse.cz];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pvorel@suse.cz,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: EAE6A41D6E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Micha³, all,

> Hi Petr & Oliver,

> > in our tests, it's quite persistent and clean on parent:

> I haven't reproduced it myself, but this issue seems somewhat related
> with issue observed earlier by CI [1]. I would expect it to not be a
> random glitch but a true bug related to the series.

> In previous versions of the series, during parsing there was a
> unfortunate snippet of:

> +	const u32 *tables = block->tables;
> +	size_t offset = 0;
> +	size_t row_width;
> +	const u32 *vals;
> +
> +	row_width = block->num_columns * sizeof(*tables);
> +
> +	for (int idx = 0; idx < block->num_tables; idx++) {
> +		for (int row = 0; row < num_rows; row++) {
> +			vals = &tables[offset];
> [...]
> +			offset += row_width;
> +		}
> +	}

> Which caused hopping by 4 times more bytes than it should, because the
> sizeof() wasn't meant to be there. Since parsing takes place at module
> load, looks like it could be the issue. This seems especially convincing
> given that report is from parse_vswing_preemph_snps(). I have to also
> admit that it would be consistent with review comment from Sashiko [2].

> Lastly, sadly due to poorly split commits, 15th patch from v1 turned on
> whole VBT #57 searching. This probably caused bisect to point at 15th
> patch instead of pointing at patch adding parsing code, which would
> clearly show that patch/es introduce/s the bug.

> Anyways, now the bug should be fixed in v2 [3].

Micha³, thanks a lot for pointing pointing this out.

Kind regards,
Petr

> [1] https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164196v1/fi-hsw-4770/dmesg0.txt
> [2] https://sashiko.dev/#/patchset/20260331183332.1773886-1-michal.grzelak%40intel.com?part=5
> [3] https://lore.kernel.org/intel-gfx/20260415234639.3577774-21-michal.grzelak@intel.com/

> BR,
> Micha³
