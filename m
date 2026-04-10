Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOMmGaM72WkjnggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 20:04:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 152733DB4F4
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 20:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B92E10E9E7;
	Fri, 10 Apr 2026 18:04:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i4PWuvNM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 770B010E9E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2026 18:04:16 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id
 5b1f17b1804b1-488ad135063so21978875e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2026 11:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775844255; x=1776449055; darn=lists.freedesktop.org;
 h=content-transfer-encoding:content-disposition:mime-version
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9pXqfkUthtKsDLCaaJb3F9lOd6jWSjKtgm2n5UPVk1s=;
 b=i4PWuvNMzKaHbdy1LAlqdD2jTmLT0BWzEUOTpHWySbxInNynZcvK7pD4pMLuMSx0kc
 xQK5h7kuPum0XtpPmM97IZWu8/MZK7jYf4+mgGeyPMhCFpoJ2UCNzDTBtaT60FOvRCO4
 Hxd0Ni3jGyoSwhBt2UmOapy1plNOUIhlKhcE8DHFU3ISnZkuTey8AkVLc7N1MxMTh1G8
 /WgHR05GEX4lXeAL8mjsmhCklcf2T6JPhB96HR2JWqApVOwdZip5suW+Fni2EGnRiXVw
 vd9vkczhnm9vfbVxM1GhuC5bUq1rgewKbPcpExinn5ixotBB4qr/0ntRGTc0VGLyU+SO
 qALQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775844255; x=1776449055;
 h=content-transfer-encoding:content-disposition:mime-version
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=9pXqfkUthtKsDLCaaJb3F9lOd6jWSjKtgm2n5UPVk1s=;
 b=sfJmxv39tIkINaeScOZZocEEQ8x437bLxuapGbNBULhxDMCCeJN3/Q7HMJPpm5Z0W9
 Pdnz/YnzugGG29TEi7Oiy/pNvfc2/kURoUXkj9frU7mG+wTmmyRXtVhBvFGpx6M/H65o
 6+P+DjWbJTqF6WEH3laLr091idFm9X1ODuGod/vl3QAyhaYCj+OCWfdehyrK+6qJXbeU
 epsYSHAsWsyTcfphC0vJWXi5bxU51DB2oUVCqDKisCfQhEmJl2ZnQQL2TqHdkkVDIRzW
 Fi3hEgFkraPkHLAPE0dHCwUo6EAxCWw7nYeQNGiPQBw9nZx0VTg5yiAPTac8sYIsDxlm
 FyEA==
X-Gm-Message-State: AOJu0YxiofBUzyMGC1k11qUedtvgzzui5SLiRnZ8hNe15haCBR/tECm9
 FK4Ri2QenErJQ6XqPeII92du1TYGiK4Quj3Un83FDFC6mBfhLEq5fniP
X-Gm-Gg: AeBDieszD/Dopz5Fa1pbwU/xu/RrMLYu9DeMrk31oBsuqHq6NOdkCd+gBokdN1V7FAX
 Yvbi70Jc9j31awememplmNyAtkHqj69jgHqUmZLX9HHeb6HsJhYTnka72n3FRRXsf599jdF/q2w
 F1ZH6747yLOLA8njeN7NAV379k1UUwEnPCeY4uv2KOVevpHd9eB/xRtDxweHqTz30GyBuJi915q
 sxQVXhX3ilkcZlyMYNRnoBzgt3bq7bniAmWGNaExI+QciCqphL2GdODNaGg7foVQcnFtYLt+c30
 XuZYQ0jbn00LJtQ6Gk3BSJod/CbcnUE5exLqoMOg8nWpeHMwzitbYSdGUVKazBQ6lzvfHR5edR8
 6NICqDTHYJ5+pVZBcHVX89Ib9LU33TxYY/QeYFA+RyMSA8tmJwA7wkfaLp4SeDYvMH89/+8f61k
 mmLUyP13Q+0HFEDG+MFZg=
X-Received: by 2002:a05:600c:a405:b0:485:364e:9328 with SMTP id
 5b1f17b1804b1-488d68766d2mr44050275e9.16.1775844254878; 
 Fri, 10 Apr 2026 11:04:14 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-488d6881ea1sm24345175e9.33.2026.04.10.11.04.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2026 11:04:14 -0700 (PDT)
Date: Fri, 10 Apr 2026 21:04:11 +0300
From: Dan Carpenter <error27@gmail.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: [bug report] drm/i915/psr: Repeat Selective Update area alignment
Message-ID: <adk7m-Su-XddxdHo@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jouni.hogander@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[error27@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[error27@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[stanley.mountain:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 152733DB4F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Jouni Högander,

Commit 681e12440d8b ("drm/i915/psr: Repeat Selective Update area
alignment") from Mar 4, 2026 (linux-next), leads to the following
Smatch static checker warning:

	drivers/gpu/drm/i915/display/intel_psr.c:3028 intel_psr2_sel_fetch_update()
	error: uninitialized symbol 'cursor_in_su_area'.

drivers/gpu/drm/i915/display/intel_psr.c
    2995         if (full_update)
    2996                 goto skip_sel_fetch_set_loop;
    2997 
    2998         intel_psr_apply_su_area_workarounds(crtc_state);
    2999 
    3000         ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
    3001         if (ret)
    3002                 return ret;
    3003 
    3004         do {
    3005                 bool cursor_in_su_area;

Nothing ever sets cursor_in_su_area to false.

    3006 
    3007                 /*
    3008                  * Adjust su area to cover cursor fully as necessary
    3009                  * (early transport). This needs to be done after
    3010                  * drm_atomic_add_affected_planes to ensure visible
    3011                  * cursor is added into affected planes even when
    3012                  * cursor is not updated by itself.
    3013                  */
    3014                 intel_psr2_sel_fetch_et_alignment(state, crtc, &display_area,
    3015                                                   &cursor_in_su_area);
    3016 
    3017                 su_area_changed = intel_psr2_sel_fetch_pipe_alignment(crtc_state);
    3018 
    3019                 /*
    3020                  * If the cursor was outside the SU area before
    3021                  * alignment, the alignment step (which only expands
    3022                  * SU) may pull the cursor partially inside, so we
    3023                  * must run ET alignment again to fully cover it. But
    3024                  * if the cursor was already fully inside before
    3025                  * alignment, expanding the SU area won't change that,
    3026                  * so no further work is needed.
    3027                  */
--> 3028                 if (cursor_in_su_area)

cursor_in_su_area is either true or uninitialized

    3029                         break;
    3030         } while (su_area_changed);
    3031 

This email is a free service from the Smatch-CI project [smatch.sf.net].

regards,
dan carpenter
