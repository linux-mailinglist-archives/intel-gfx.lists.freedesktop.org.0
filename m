Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JMYKx6D62kONwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 16:50:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D95460600
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 16:50:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55F6B10F5ED;
	Fri, 24 Apr 2026 14:50:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="axOnln/M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE28310F5E9;
 Fri, 24 Apr 2026 14:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FLTUu00A34zhv++jHW0rYABgVFly3ZQoIZYBXgXodXE=; b=axOnln/Mf0P7CC8Y+9DDbJwm7S
 754or0hSqFh+SZX4wcqG4w+TcORnZrgk5eyCMz6IetSkkjMKDArZFGOFUG6uDo2wmUO5xBAcKVvvO
 NHpBazYsowwSvScWhoOglCGQxI/nafk88V9yir7hs+AUvSKWLtJe4RSLAXqoIn+Nx5A9MFa5uD6Nu
 NGRP9/Oap0/2phhcbiV9KxkloVluw3RdermZxYKQsAMurN32uQdHbANlHhB5ZO0XyTDBquILrfIJW
 hB/EZsOVtYHdg+Qq1GbqMuwb8z2ZqkUg2fAr3zPp3IHXXxB/Aq2NDSdddvGLkcfDDgdFD7nLns5+Y
 d5+UVwow==;
Received: from [186.208.73.228] (helo=[192.168.18.14])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wGHqw-001dgZ-Kh; Fri, 24 Apr 2026 16:49:58 +0200
Message-ID: <7149c957-43e9-4ad4-bfae-307d2eb5146b@igalia.com>
Date: Fri, 24 Apr 2026 11:49:53 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] drm/colorop: Add DRM_COLOROP_FIXED_MATRIX
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: harry.wentland@amd.com, louis.chauvet@bootlin.com, contact@emersion.fr,
 alex.hung@amd.com, daniels@collabora.com, uma.shankar@intel.com,
 maarten.lankhorst@intel.com, pekka.paalanen@collabora.com,
 pranay.samala@intel.com, swati2.sharma@intel.com
References: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
 <20260408051514.608781-2-chaitanya.kumar.borah@intel.com>
 <c15ff4ca-79c3-4e65-bcc3-24e74adc2636@igalia.com>
 <e4eced80-8b22-473d-8add-7e4a517937f8@intel.com>
 <1483a913-dede-4daf-ac82-0329656a3d17@igalia.com>
 <0543a055-c910-407a-b26c-3ecb9908f52c@intel.com>
Content-Language: en-US
From: Melissa Wen <mwen@igalia.com>
In-Reply-To: <0543a055-c910-407a-b26c-3ecb9908f52c@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
X-Rspamd-Queue-Id: 81D95460600
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mwen@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[igalia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]



On 23/04/2026 06:38, Borah, Chaitanya Kumar wrote:
> Regarding the IGTs they are yet to be upstreamed with this version of 
> the series as we are still working out how to use CRC matching for 
> pass criteria. (As i915/xe does not have writeback hooked up yet)

Out of curiousity, are you working on adding writeback support to them?

Melissa

