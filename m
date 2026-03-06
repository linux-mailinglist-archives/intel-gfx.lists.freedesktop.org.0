Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHFIJ4ONqml0TQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 09:17:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5016421CF4A
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 09:17:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7A5710E3B4;
	Fri,  6 Mar 2026 08:17:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="M2FQPb6R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 654B410E3B2
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2026 08:17:03 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id
 2adb3069b0e04-59b672f8ec4so3186680e87.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Mar 2026 00:17:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772785022; cv=none;
 d=google.com; s=arc-20240605;
 b=B98S1cZ52K2vycYKo8b3HXXKIHePB1vs8FYNwYRJe3kBtDqDlr9VwGag5w3+v8hrvV
 9zd7hE9PubvIJkKZyOOe1MdIC96pMJj+5qRBCSQEhrY7aAZ9EOSgp4XofUtsBSiN98dp
 QSG3e0dQuDBfWY8wZzJz7kReX+87rS28l47zQoe5WTDsr8snmwI5Ky8JVAfm3/Tt7nxh
 5IUAvsDvIH2K3WfmEHRL9qqVYcfyYU9JWQMNVLWGNMG5ZihK3UpZRfVwaKh7G4rFgqh5
 PaFa/ryo0KEOYtvIfQzYoLaSendgjfUBYjPa4mD3aAPW93AeKAv+eC1k6PEHiamRBJrr
 0xrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=tJWs/FbEIWevZkUvI5Q1ViEvsAR2C8mtBFok4ydC8DA=;
 fh=6/+yyY3txJwrpEucyjGw/hmxZWH7dvsWYqJc48CwLKo=;
 b=b76iHTqYQyrDTZiXl0BR12TV+bbjgdwMoyLuJUZQ213ZNMiKmsBbXGzfU7pGbJzz/Y
 GOh/QRkVq7lkCgSl4yi90Y8ncaWU11072Uf/gZ7DZCioWfuf6lCVc32buuHWkYrTKJ8v
 fbD26BC62yR5hRcxB6pc2ZtMM0ZoiDOJQsHKs3x5UeAm7O63nV1DSqIjgIS+9xk3DBYc
 R532pbCmZT4nUBJXmlwrF245ABFV7J94jTHSab81zMYI5z0/y6t9g/9toFQuBjQI/T1x
 PixhjFXLQYW63TGrPInxZAC7knd/D4iHIF7GzcSKwkstrGd+0C8D8me/ItJI0LwIaH3r
 Zi6A==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1772785022; x=1773389822; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tJWs/FbEIWevZkUvI5Q1ViEvsAR2C8mtBFok4ydC8DA=;
 b=M2FQPb6RvnBmeEG+w01I0ToX4UF15iguQIewc93RAfzdzILrk0z/IPuKJmYSdtfkJi
 8V2zFw4kUi0dgWSYO+5ldNcpY/OGav7JjQ7iAtlNLJgkEbGoFCTo9yFMlfWkri5Y5j+k
 ToEGKy0zaEXKxpsaS7D2jP2RK4LJnX0tALx2ONGuFfuvsBXnKBysSyRZmTB4FB40xEjY
 dOsLKvDrzgiyCrDFc/5hYhqwOBzHGr/QuWcl1A4sPtO21ftVb9zOFyxuhuhKTFVH/qKE
 F6dhM1ZHbnAWqYXrM6NO+Jz4tPPSgO7IS/DrZ2g71XIoqONak+AA66QNgPC3DMlIPXET
 E/Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772785022; x=1773389822;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=tJWs/FbEIWevZkUvI5Q1ViEvsAR2C8mtBFok4ydC8DA=;
 b=h1H5mKU+paBt5x9pdf9ZksRezf5C5SWZnpPtU2G2Df60sH5hwRiqUeI/0zeUtCHF76
 sZgEn7z+oA/keS/LxqRxjFiFHdTqSvFg4mO+CUswpTPC9ibAMJ+dJmXWByL36HGLygDc
 YH2+HExM+EYs0dobcGcBczVeDL4pZatQOXM+rMxU/N9E5GXVuViWe7FCytBRCxo2Aaxk
 SpWTRRbBp0As2ouuivcZ1RsTkRqbgk9+kW9qblvdWRByaXNom10oEu7MDkkXemC2ljOC
 9LpEzemFmgd1PuA3JDea8FQU7zhVvVyWIvTHpDUrYzK37udMDpvFhmjrOqqBxGo/dhRU
 CQsQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUDCwGH5X9VG3ad14m4iZjyXKjDXpMt9vl4YQKjqFk0axwzpI0PQPieuE298I+1wnDDkHShzd/6WQk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy+aBqo67BMu5nn6BBExQ9ovOynXm8iSCtMyMURZ3jnTaludUk0
 NNin6sZUnyqvaE39LUfeOF7K6aN8OHK9jKmvlob2BqrlM49Fg+UzDexNLgYRFCN60qRsfPJZveN
 3ZmAH3oJz+WfToiz0tw6NvWj50CMmtIBsc7cYkrWKHQ==
X-Gm-Gg: ATEYQzyxQyq0Flun8LMVPTh8N3m11U0NmGpKM45R8PEMeSxBi1kdN6kPpB3MPOLSX+q
 w73rY5OfkuBxByVGd6zz/vNO290J6ChW6MYxhuctATz1Y4I1pKRynQR1bZ4XDdPE5qUuUGPvqss
 xXj/Jmjy9iO9kRzjS8olvivW+lhOsZ1y4b/4ZOCW0g59LX/yWCeooX9cv9CvnYy4ZhXnbJnSCzM
 P5AZYSmob7lbn72TsGSZI7bwNPnCzU7AEN4q/BXqysd6QT2pr7u8Cgz0ceXrPEp9wvXUuqpOV+p
 c+PL6ZkzHYHJXNXaLZtZ2mXL7sE2kNFcYTotzMpn
X-Received: by 2002:a05:6512:3f08:b0:5a1:1d29:e749 with SMTP id
 2adb3069b0e04-5a13cab4c3fmr462212e87.12.1772785021656; Fri, 06 Mar 2026
 00:17:01 -0800 (PST)
MIME-Version: 1.0
References: <20251104100032.61525-1-marco.crivellari@suse.com>
 <CAAofZF4bvBoecKaJv_sEEK54htXBv_dc23tJRrwhXrGb3O_D7A@mail.gmail.com>
 <aanRQseClNRRDZxq@intel.com> <aanSyqBzTygkzg80@intel.com>
In-Reply-To: <aanSyqBzTygkzg80@intel.com>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Fri, 6 Mar 2026 09:16:49 +0100
X-Gm-Features: AaiRm53AkZnEW28fqpnOqQb3GhR_VcT3imBeTJdcVHYvieupBOdB_AYauN-OleQ
Message-ID: <CAAofZF5EpWGh+2Ow2RMgvgmutnm+Gp4xO-rtxW16AcTjH9D8EA@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] replace old wq(s), add WQ_PERCPU to alloc_workqueue
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, Tejun Heo <tj@kernel.org>, 
 Lai Jiangshan <jiangshanlai@gmail.com>,
 Frederic Weisbecker <frederic@kernel.org>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Michal Hocko <mhocko@suse.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Krzysztof Karas <krzysztof.karas@intel.com>
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
X-Rspamd-Queue-Id: 5016421CF4A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.vivi@intel.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:tj@kernel.org,m:jiangshanlai@gmail.com,m:frederic@kernel.org,m:bigeasy@linutronix.de,m:mhocko@suse.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:krzysztof.karas@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[marco.crivellari@suse.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,kernel.org,gmail.com,linutronix.de,suse.com,linux.intel.com,ursulin.net,ffwll.ch,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marco.crivellari@suse.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[suse.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.com:dkim,intel.com:email]
X-Rspamd-Action: no action

On Thu, Mar 5, 2026 at 8:00=E2=80=AFPM Rodrigo Vivi <rodrigo.vivi@intel.com=
> wrote
> doh! please ignore me.
>
> The similar subject titles confused me.
>
> I just pushed this i915 series to drm-intel-next.
>
> Now, also queued for 7.1 along with the xe above.
>
> c15d0056fb74 drm/i915: add WQ_PERCPU to alloc_workqueue users
> 4fb289d352e3 drm/i915: replace use of system_wq with system_percpu_wq in =
the documentation
> 36ed3648a2f3 drm/i915: replace use of system_unbound_wq with system_dfl_w=
q

Hi,

Many thanks Rodrigo!



--=20

Marco Crivellari

L3 Support Engineer
