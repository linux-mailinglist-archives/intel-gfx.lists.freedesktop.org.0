Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 797C4BFCB94
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 16:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0179210E7DE;
	Wed, 22 Oct 2025 14:58:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.cz header.i=@suse.cz header.b="sWGEuuFS";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="KgxrARKk";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="BlqmDWwm";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="7ImwuuIJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E9B10E7DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Oct 2025 14:58:11 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 336A721175;
 Wed, 22 Oct 2025 14:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1761145086;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7viEvQzcyn6knkSOvPWrVGOv6AubdINN8OE4vOFMmA4=;
 b=sWGEuuFS0dApqi0oF4J6vhkZzickYvkAjNneTP4Z47X8PMV8Y7FCJ7t8Asn37DcBtenExh
 rVT1Ho+y4uZJbFGey8NOfrUciZAgweLcBnJycagPCdbpIN+t8Y9q9rdsv0LHvrdneZxHME
 0nVR2phpFB5RCOiWfimhQu/3hDmF70k=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1761145086;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7viEvQzcyn6knkSOvPWrVGOv6AubdINN8OE4vOFMmA4=;
 b=KgxrARKkHeecRbHwLaO2Bp5839HbnhvCN1nFB7PXKRTNoBfUzChN3+Tvxuo8kGU57VZlI2
 foE4nfZG+8Jtp8AQ==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1761145082;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7viEvQzcyn6knkSOvPWrVGOv6AubdINN8OE4vOFMmA4=;
 b=BlqmDWwml5TyDXrPBA7KlXbmMw2JgBEHY5ymJSrCYxGXKIOz29CZeymL0EbycrYjAGjPFt
 7RC0FGnsZCsvZw9ePGINZkJACE1R6+vpLhz0KOVU9udfae0IHNmIrN83o069LWEmCtVzJ7
 dd2DZNOM+2H57I5J7npJ8lmW8ZuLv2o=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1761145082;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7viEvQzcyn6knkSOvPWrVGOv6AubdINN8OE4vOFMmA4=;
 b=7ImwuuIJCyo/byUEsgE89TGlez9lYyyngSj26DZheSQmn/75MtPmu50dbIrgbgHWcNEgHj
 RnNFO+Be0WEzpFDw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id F19B91339F;
 Wed, 22 Oct 2025 14:58:01 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id LUf4Ofnw+GjkPwAAD6G6ig
 (envelope-from <pvorel@suse.cz>); Wed, 22 Oct 2025 14:58:01 +0000
Date: Wed, 22 Oct 2025 16:57:52 +0200
From: Petr Vorel <pvorel@suse.cz>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/dmc: Set DMC_EVT_CTL_ENABLE for disabled
 event handlers as well
Message-ID: <20251022145752.GB493682@pevik>
References: <20251022100718.24803-1-ville.syrjala@linux.intel.com>
 <20251022100718.24803-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251022100718.24803-4-ville.syrjala@linux.intel.com>
X-Spam-Level: 
X-Spamd-Result: default: False [-3.50 / 50.00]; BAYES_HAM(-3.00)[99.99%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 HAS_REPLYTO(0.30)[pvorel@suse.cz];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MIME_TRACE(0.00)[0:+]; ARC_NA(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.cz:email,suse.cz:replyto,imap1.dmz-prg2.suse.org:helo];
 RCPT_COUNT_THREE(0.00)[3]; MISSING_XM_UA(0.00)[];
 FROM_HAS_DN(0.00)[]; RCVD_TLS_ALL(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RCVD_COUNT_TWO(0.00)[2]; REPLYTO_EQ_FROM(0.00)[]
X-Spam-Flag: NO
X-Spam-Score: -3.50
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

Hi Ville, all,

> DMC_EVT_CTL_ENABLE cannot be cleared once set. So currently
> any event we never enable will have DMC_EVT_CTL_ENABLE cleared,
> whereas any event which has been enabled even once will have
> DMC_EVT_CTL_ENABLE set. For that reason assert_dmc_loaded() has
> a special case to ignore any mismatches in DMC_EVT_CTL_ENABLE.

> Eliminate the special case by always configuring DMC_EVT_CTL_ENABLE
> based on the original firmware event definition. Now all
> event handlers will have DMC_EVT_CTL_ENABLE set, whether or
> not the event has been enabled in the past.

> All disabled event handlers will still have the event type set
> to DMC_EVENT_FALSE so they will not actually trigger despite
> DMC_EVT_CTL_ENABLE being set.

LGTM.

Reviewed-by: Petr Vorel <pvorel@suse.cz>

Kind regards,
Petr
