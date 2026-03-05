Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPjMBZGbqWnGAwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 16:04:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE282141F9
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 16:04:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7638710E2C4;
	Thu,  5 Mar 2026 15:04:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="DOYezm37";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A38910E2C4
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2026 15:04:45 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id
 2adb3069b0e04-5a1303b088bso974356e87.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Mar 2026 07:04:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772723083; cv=none;
 d=google.com; s=arc-20240605;
 b=kgt2VJQ5QHCLzDzK4enRzz92CR2sMsnGGXmo5QWDoT3v7RGsR3ztbWsR1eiES75qvr
 wv6EW5Wz7c4Zodc9OvgebSif2JO8rhxeAyeJF4wk8e8oOLLw27xBG96z/Wcwb/LcpBsG
 v+iNezYfsYi7hiXJe7Oe8tXd5gBENZWuzpaJM/qlsQZXtJmDhJFLQg9O+dX+Q6BM0jqx
 uFrhfhmcwCe2Bpws8z+HaxdwKluNE9tdIbPwEN23mMBRNYIt5aKRRUhD2tbRekbutM//
 RAzNMJLcCy7fUyuHQKuex5GyJ0fB8UrbcCH53bm9TUuwq6fLiJU+sJZt1LSXYziIcbXl
 niKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=bAzlDiATw0sReZVnHLqMUNDe8YNqfvDhHHmieW05wFY=;
 fh=eSzX5ScW23VmCoar504nBK8RDGBDMKCgy66WWzz0NPQ=;
 b=hD/QuO6TDBBTGybfmx6KOqu14iDwCR85RBbfpuX+rTrNGjC621v973jiGlYK0OrvC4
 arL/4pSn5iVFHg2+OdNmEYYrcmISUW4VoadsQc8UPVp576MyJf/aLuq7qZHs7CI4yWjR
 wJp4nHRMF3+ZYAlgq/VUtE25MQTpmdgXMemNYa6d6J1FNEs4pMMrl6I4pe6f3LeP/+Ev
 kHCtO4kkb9VyJU8jMzwjhh1G4yjpv8kIX1UDJ82eCStLeF7uafRkBAUzcalavJOTUW/v
 /mukprJsrb+nOx5Ygc8AxsP4CxdWYYiJMlyLEJkHDgKoIbY1rNMUwb0ybZFK4G5sHXbS
 Z9Pw==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1772723083; x=1773327883; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bAzlDiATw0sReZVnHLqMUNDe8YNqfvDhHHmieW05wFY=;
 b=DOYezm37EeQUuWgkjlA38up2GyTLHv0a6OmG9pSFiLlyGQV8qKQbiKBE3BVPV2HwQR
 aoQ4GGw0FtG4UeZvuLeb0w8jQPGAYMCphKQYwdMviBcikqxD/FPs8jAkTPt8JE6kjh6G
 35dcJ4QjQj2kADqlV/YSIg2YoinPqjnUrMWPtYMM0qjgfWOtfBCPv3JlQmbLdu4SRSVD
 obJtMuyory50IEZKarKZCpjVe/MwGy57JqXimRoTMpY3pIwsEcMeq+h+C3lKrGvAot+S
 8DnhdXDkT4K1vcizENZLnkNDgR3nDt7oOUX8yVL4vM3N8eTP3+xdNOSqKrLIiJis9TZg
 YFzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772723083; x=1773327883;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=bAzlDiATw0sReZVnHLqMUNDe8YNqfvDhHHmieW05wFY=;
 b=F/Af57aDjrBHFM3l9l5j56GgzJwZn+N6bvvP/Ls3oeHnzcYaPbHnCyNqYfvHfY3SWG
 7+o1GMjORrvamNwJLMVTGoXiGpVcPzPVzGkvaMte9air6qsT+JJmbRnlITQYR3WNCHEf
 m3Jos6yjV9JPERz9SiqyVYzZKgvQA5lc7b7s/XZQRU4V/ANEqlTufZGcLUVEBNmsLTZF
 RFhku5+iRwjWPZwF9G7wUxTnJKe4fBlQYvsR9GzDE1hQF02Ud8H19YK5Ob1OCQnOOKLa
 YrEqC9SmozhLs3OcE18OXEcRoa1kCL0iKumqKojA4nDSA75Y6pDp6mwI1QpZZyJXQuDo
 GgVg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/tAmsGBE1vDDdVgjb8tWyrZ0kNt8lG6MPBkBhZFAHtkuDr8hJDwK1gepdM9jJQia0OgNBwTFlcfg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxb3j4oPIBwfD7gz6po18bnVayOM0A1KQQ5qTt57eOiULVHWsPX
 CTnXyQ47AnLJ/wytQ7Ly9eP8OciCbD2PLVWUF79flJbWlKsw9XJwADBKwpwFC7O9Rg1aJwJeqlp
 oMKZZL+i7lzApZCdmAQ7yZKutsl1wZm6u6tXDjrNXVg==
X-Gm-Gg: ATEYQzzdZaBSRs8uG5MifjjLrHQz21igFD46/47cAKhH4VN0je1kyjR8PQyezBcJJZB
 I/wZVqr+l3/2n5UuGm0SUoFRY358uBjijIcVdfhQ3f++8yo3ghZ2Xn8FzA760RCCXjjPz052nyv
 h2+BdQYmG+JdunJDtiDzCa6ytjn4lg/M4Ww3n37fDILOU7vMoU+3ETG4ilgCM5BAemADtK7ngrZ
 O3TMZIpBjkJYmaCdx2HAXPdh8Xnh+5AduVKWOH0bASZT7kSBx5AVgcrNI8xBJPUZ4Lm06EcCsLq
 BuQJTnIEy8YDDeroZp9r5H6wxeqcDTPQ7+GK01O4
X-Received: by 2002:a05:6512:3d02:b0:5a0:ecb2:c0c2 with SMTP id
 2adb3069b0e04-5a131ee685dmr1018802e87.4.1772723083472; Thu, 05 Mar 2026
 07:04:43 -0800 (PST)
MIME-Version: 1.0
References: <20251104100032.61525-1-marco.crivellari@suse.com>
In-Reply-To: <20251104100032.61525-1-marco.crivellari@suse.com>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Thu, 5 Mar 2026 16:04:32 +0100
X-Gm-Features: AaiRm51Fwf7l48SqEBCdWz3UtmH6UJ4sv_2IzU_K0N4uV9iItuAT5-zrxEN7IQA
Message-ID: <CAAofZF4bvBoecKaJv_sEEK54htXBv_dc23tJRrwhXrGb3O_D7A@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] replace old wq(s), add WQ_PERCPU to alloc_workqueue
To: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Cc: Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>, 
 Frederic Weisbecker <frederic@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Michal Hocko <mhocko@suse.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Krzysztof Karas <krzysztof.karas@intel.com>
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
X-Rspamd-Queue-Id: 6EE282141F9
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
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:tj@kernel.org,m:jiangshanlai@gmail.com,m:frederic@kernel.org,m:bigeasy@linutronix.de,m:mhocko@suse.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:krzysztof.karas@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[marco.crivellari@suse.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linutronix.de,suse.com,linux.intel.com,intel.com,ursulin.net,ffwll.ch];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.com:dkim,suse.com:email]
X-Rspamd-Action: no action

Hi,

On Tue, Nov 4, 2025 at 11:00=E2=80=AFAM Marco Crivellari
<marco.crivellari@suse.com> wrote:
> Marco Crivellari (3):
>   drm/i915: replace use of system_unbound_wq with system_dfl_wq
>   drm/i915: replace use of system_wq with system_percpu_wq in the
>     documentation
>   drm/i915: add WQ_PERCPU to alloc_workqueue users

Gentle ping.
I checked patchwork and seems still in the "New" state.

Thanks!

--=20

Marco Crivellari

L3 Support Engineer
