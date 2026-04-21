Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNp7GAi052lU/wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 19:29:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E472843DF8A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 19:29:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60F6710E8C6;
	Tue, 21 Apr 2026 17:29:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="lc3R4oKp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com
 [74.125.82.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4582510E8E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 17:29:41 +0000 (UTC)
Received: by mail-dy1-f180.google.com with SMTP id
 5a478bee46e88-2dec803f9f0so2636540eec.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 10:29:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776792580; cv=none;
 d=google.com; s=arc-20240605;
 b=U/gEh8lZ267F5fIOtVKK55W3Ql8eq7aLmWRGi3eL9bRiw8fy5Fpu6wMPIwQEAbjOJV
 QH3lr+d2hSlltdGzuNVUYGmt28AA3BADQEF/MU6YfL+ER99xydFqpyBhs6tv9n8UWMw2
 XJT605gUWTvLrRMYlrgO/5oYJQeJ+ha8aA6pwkvUdUa/L9k8tdadcJ25Vq7WAkFqQohO
 ELipF8w0WZrPsJkSdcXMDnq7qxEr38q7/65lzUAtGQLqvE1q3eW2YiVS9YV/kkU6kqkK
 sykgpW1EpSWauV/pOWbPgOYRq6NYLjAIDEZDW7ayc8+S1WR9R/xiLCKrR2Oo6+hFSptk
 uhhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=u4UIHqlsKIISI/2Sr907JUuCCB9VWG/Awe+QPWpe4tQ=;
 fh=y9FHM4aMwbBTL3Iel21XypcJWodtkMWSmbgq9qcAxt4=;
 b=Odt6XpYJDIps+bioOXq8ghu+nm/lQ3tNktRYXygrKu5wCIgFXy1CyYqzuUJL7JTzu7
 pT2/qE34JmK98WsYi9B3/oYUW5bYhWMBYzC/7x7+t4Z3iNW6SNKjU76g/Pshdbct1h8B
 /lnumDvqTvMIrcDSjRaG+ognA+Snav2Q9Zg6h60D/Yqkj8ppBi+bueklwxl/saTMSbOP
 RWpc2y9AMI6QXzOYlU6HKAmpISXxoCnCqBKKXD6o9awjpOOJVqVslRts+PYbL0p4jY5C
 E3HpakQrZ6VhRQB00vfG5b6MWQ9E2Fg3nxB8Z+rx7GE+UFnI5imwYn7NVCbFiveRKj9H
 JmqA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1776792580; x=1777397380;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=u4UIHqlsKIISI/2Sr907JUuCCB9VWG/Awe+QPWpe4tQ=;
 b=lc3R4oKpTwvyuSAGjXzzhk2sNU9BIDHSu5mrhUfM5PW0gD+vfDMy89ep2A6KEYhhlj
 TILJOAvhRVgOoQtoVDNhl8HNhqQCB9laIDVmQuln2K4LDXsGtP4FPfYIWUF6xUpmTxqR
 8IYTcAmyBF0UD9hRP48cmfa3yHKsIfyXacZTxUvy/mi1B1Sz85k/o6VrEMV/TK5YBDlX
 Tr2Tm2H6CT5y3vbK4ZslKP26+au14j2h8VtIOqkDozYK5M/ec835AMmFizEPTYU3OK+E
 OmHnv5sJWCo4Hm3HK5t4Ie1i47OorJvo4iw5X+wN2WRwOhiaD7jY7Ff86ymR5/lKEbOW
 8sRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776792580; x=1777397380;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=u4UIHqlsKIISI/2Sr907JUuCCB9VWG/Awe+QPWpe4tQ=;
 b=Uv2ekrFebEXc5pBJPB4oUf4T5cEgRf3WL8FBta0Lj82THqEzYkxRYK0FTMMJWOoAyN
 Fq5ES8+xjvC2b5bjnv+h7GPj9dUuxldpeudHBeQeZqZnQkGu0+xWKUI+1CBkKDIS3UZL
 xUZLac0nheznWoECryS3W8OlbQBMEaoYmSEORr1jaUq9PNjeYH+F4UuI+F6/k6RuZ7Hr
 jmyfwOiOx9FouE+JNkL4nV2GLwDTmbYueCXlcLOgzrlGx5ihrKD5UsDnFw5HrHMDbAGH
 8dXskuSh+kbqxaeTBW0ym2I1Y63Li9neILTKxLcFaPs2tdGzZrcnGhhuQf77qLc9Ub1F
 g5EQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ+UUDALptnESb68gqcLyhvZdY0YB1RgI+emA7EGsah7nCrz8aTnaHJzkUceT3r3FhXcsU3WgmwYohY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx4p8rT7q1V8T9ud47YM6eYcWDCEi+4/woynO5LSixS8qye01hO
 foJ5l14cKJHKqOLlk+HvSqanxI8e8VKBzHLpSkE2s3meBcP27p3JdEq8b2Su3dg6SsAk8q1pO7Y
 B3fCOYtoV53+9cO+qb7E3qN7HK+y8ztsQHn9ViTw=
X-Gm-Gg: AeBDieuAm2noTEKQjF+PFykQjWy/nhi6QP/ql01Ce1kLVJ7ypF1KKeIp7j7Pz//dvuK
 x7d0K7eyk4x1l6qIZBrroe7Dx9viaYN4DnU58GUPM4D6qXppR3yxGKtCzgDjHsfZMNtAtJ9QvFo
 JjeCGx9OfnMTIKo5JBVHKqueMyVcIJymv2PCDL3L0LpOetQinnFeh87b2tuFV2YY0xi5c/IeT3f
 v4Bwx4Mdk39QUZNHNJMo1FjwC8gL/9p8gY07qjiv8ZIdL2Lcx+orMpnGp6pBDhxoRhxq/A9M6se
 mEFopI1aT1WodONh561D25FMxsOCge9+2jlYFKxdO7NdQin/nWRQI1ci7fzKXzXkTvfFQcD2fk+
 ATkkL7H38iAuOIXhh8T/pIICAk/eG9EPIYUGWVnbC3jUujRb4q0O6XOFw
X-Received: by 2002:a05:7022:622:b0:119:e569:f873 with SMTP id
 a92af1059eb24-12c73b467abmr6841787c88.16.1776792579788; Tue, 21 Apr 2026
 10:29:39 -0700 (PDT)
MIME-Version: 1.0
References: <af005996-05e9-4336-8450-d14ca652ba5d@intel.com>
 <20260327163100.GL3738010@noisy.programming.kicks-ass.net>
 <20260327164353.GM3739106@noisy.programming.kicks-ass.net>
 <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
 <20260330195037.GW2872@noisy.programming.kicks-ass.net>
 <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
 <CANDhNCq=oizzud3hH3oqGzTrcjB8OwGeineJ3mwZuGdDWG8fRQ@mail.gmail.com>
 <20260421101521.GO3102624@noisy.programming.kicks-ass.net>
 <95651a71-1adf-45ba-83eb-5744bc6d4a52@amd.com>
 <20260421143752.GD1064669@noisy.programming.kicks-ass.net>
 <bc5e8c5c-fc9c-4efc-b1a9-98c43c6a8762@amd.com>
In-Reply-To: <bc5e8c5c-fc9c-4efc-b1a9-98c43c6a8762@amd.com>
From: John Stultz <jstultz@google.com>
Date: Tue, 21 Apr 2026 10:29:28 -0700
X-Gm-Features: AQROBzCAYmmbnxRUS746VNsMzaWktlGpl4hEP9WvBOtUviyQ1j0PFBQSA2g3iik
Message-ID: <CANDhNCr-+x8pTLhXZW=ATHaKTYEmXMPukz4+t8P-FeJ11Jrz9Q@mail.gmail.com>
Subject: Re: Regression on linux-next (next-20260324 )
To: K Prateek Nayak <kprateek.nayak@amd.com>
Cc: Peter Zijlstra <peterz@infradead.org>, 
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, willy@infradead.org,
 linux-kernel@vger.kernel.org, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen,
 Jani" <jani.saarinen@intel.com>, ravitejax.veesam@intel.com
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:kprateek.nayak@amd.com,m:peterz@infradead.org,m:chaitanya.kumar.borah@intel.com,m:willy@infradead.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:suresh.kumar.kurmi@intel.com,m:jani.saarinen@intel.com,m:ravitejax.veesam@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[jstultz@google.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,amd.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E472843DF8A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 21, 2026 at 8:48=E2=80=AFAM K Prateek Nayak <kprateek.nayak@amd=
.com> wrote:
> On 4/21/2026 8:07 PM, Peter Zijlstra wrote:
> >> First hunk orders the first_waiter if we are attaching to the
> >> tail of current first_waiter which would have previously ended
> >> up next to list_head.
> >
> > This is the case in __ww_mutex_add_waiter() where pos =3D=3D first, rig=
ht?
> >
> > Argh, I see... yes. Perhaps something like the below though?
>
> Neat! Thank you for cleaning it up. Those, along with the changes in
> ww_mutex.h fix the issue of ww-mutex_test hanging in my case. Feel free
> to include:
>
> Tested-by: K Prateek Nayak <kprateek.nayak@amd.com>

Same. With Peter's change and K Prateek's ww_mutex.h change it looks
like it's working for me.

Thank you both!
Tested-by: John Stultz <jstultz@google.com>

thanks
-john
