Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id a+eoIsnSKWqidwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 23:10:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B3566CFC7
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 23:10:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=K7ZqVJ+q;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=redhat.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6904910EBE9;
	Wed, 10 Jun 2026 21:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3BF110E6E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2026 21:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1781125828;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zn+metQNd/XG/ZUgXyMP5j+F+hyFwWJJHw2ChAA//AA=;
 b=K7ZqVJ+qE7yKELZBT3yT7zFdj7n7FoOOoNDJPuYPRFEbnxknqg4PLUI9U8J8bpwnakEgoc
 sLXJrbBs/ruTnq8OVrynTsaeGDax7jjJ7rxo8iVOLr28vMrynDDcDPutRweIJAP7C2qz80
 /kDSXf9RwIxmGOizdUyxnHsG1PnVoJk=
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com
 [74.125.82.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-248-FU-BjpcOMsmOfY8RodQquQ-1; Wed, 10 Jun 2026 17:10:27 -0400
X-MC-Unique: FU-BjpcOMsmOfY8RodQquQ-1
X-Mimecast-MFC-AGG-ID: FU-BjpcOMsmOfY8RodQquQ_1781125826
Received: by mail-dy1-f198.google.com with SMTP id
 5a478bee46e88-304dd917645so8375698eec.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2026 14:10:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781125826; x=1781730626;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=zn+metQNd/XG/ZUgXyMP5j+F+hyFwWJJHw2ChAA//AA=;
 b=VV2InpG7hGxGCZiFs3Axa+oT5eT7nlFeBxzdsNaO+psVh/mMT/uD9sQi6wzUvpAmTr
 palU5W2R3lQfKzvS+rk5DJrMZgxX5KSfcIev57jQHGdOrzViVidbGhA9YcskUH1B6KHz
 HoyMkwGEcVphFc9HwUiCpQAOujmHKYyp0dGNtTJLQD2OmrARWEJOUuyfZYQonUVitF+B
 1ciiegzNWMg0ceYzXw4rigj/h6tuWqXp79zZpWwO//aBBM5iQxY839gqL8P2umi2+1/1
 Wlu2bUcPer90KZ27ajpcmoFQjkkOI3fJROPpWPqSsBwrjlUpFPIz4B1th5qLyd1V3uil
 XRKw==
X-Forwarded-Encrypted: i=1;
 AFNElJ8joFv5tsfvArhZ2qiaEFIKzN65jJOUUFq9zr+sOTUlIj4wBy+2GpKx84HgEYQpmvq/0v3a+a5qJUI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy+auYn1j5mRQyih/AHVFiv0atfZFV9oRUQPjj3oUgVVfQuGmcq
 rut+TU0ZNV6312np5tVlMpANoZdyJfGenwD/aMFDOd97276V+MWyPk9V/Isax6qgGlnLgSF4oo0
 4ItlIAHNhBaoZP+50RjcGspULM+gqrJSkSYxDfI/SZc/0NJ6PxPTh3xcDy8Ms0/acAYWAb2Tdw2
 +4BMIA4NP/BoSO+FAmgXtCzuPfC2IrAuTfFtwrjwM3nOoj
X-Gm-Gg: Acq92OEc8JK4xOoydN5fACQgJ7hXMs8hEd/g6fJTLAB0nsS2539d6fZejVsXfOZWKHN
 O71ReweQS/j5K/K2HUjPMxaD4cqoZrdzqdofaTGKe3sAGPwHhUIrXZBlf5aX28k9GyCL61C4hzL
 PruRggCKF3/JvFKgQAsLXDvnoD0sMLFEIorVCSNYaVpkQPHTccuRzRkzimglnXsVUl2IxkIoYVU
 fXGO1uz3/s+hnRCkBFz2g8bigNU+eo9jMWz3Llx7VcIkFcM
X-Received: by 2002:a05:7300:8ca0:b0:2ed:e12:376d with SMTP id
 5a478bee46e88-307ff820bdbmr662237eec.35.1781125825964; 
 Wed, 10 Jun 2026 14:10:25 -0700 (PDT)
X-Received: by 2002:a05:7300:8ca0:b0:2ed:e12:376d with SMTP id
 5a478bee46e88-307ff820bdbmr662199eec.35.1781125825460; Wed, 10 Jun 2026
 14:10:25 -0700 (PDT)
MIME-Version: 1.0
References: <20260610141549.555605-1-jani.nikula@intel.com>
In-Reply-To: <20260610141549.555605-1-jani.nikula@intel.com>
From: David Airlie <airlied@redhat.com>
Date: Thu, 11 Jun 2026 07:10:13 +1000
X-Gm-Features: AVVi8Ce5IWVyE8AXhZUnTXwJ31lTOn-qBi0p3ZXgtCPUjD5gRdicD1lr4IH92yI
Message-ID: <CAMwc25ow-MehYN8u0EFkEW-JB2CYL+od9xja0WBK0-msWMHOww@mail.gmail.com>
Subject: Re: [PATCH] drm/displayid: fix Tiled Display Topology ID size
To: Jani Nikula <jani.nikula@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, stable@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: yb3aXghvIQ_TW-ZohtrIQtYRgAAsZC8ZcEuqftIZ59Y_1781125826
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[airlied@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[airlied@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E1B3566CFC7

On Thu, Jun 11, 2026 at 12:16=E2=80=AFAM Jani Nikula <jani.nikula@intel.com=
> wrote:
>
> The Tiled Display Topology ID of a DisplayID Tiled Display Topology Data
> Block consists of three fields:
>
> - Tiled Display Manufacturer/Vendor ID Field (3 bytes)
> - Tiled Display Product ID Code Field (2 bytes)
> - Tiled Display Serial Number Field (4 bytes)
>
> i.e. a total of 9 bytes, not 8.
>
> The DisplayID Tiled Display Topology ID is used as the tile group
> identifier.
>
> Update both struct displayid_tiled_block topology_id member and struct
> drm_tile_group group_data member to full 9 bytes.
>
> The group data was missing the last byte of the serial number. I don't
> know whether there are known bug reports that might be linked to this,
> but it's plausible the last byte could be the differentiating part for
> the tile groups, and fewer tile groups might have been created than
> intended.

I pulled out my spec, and indeed I can confirm this is the correct reading!

Reviewed-by: Dave Airlie <airlied@redhat.com>

