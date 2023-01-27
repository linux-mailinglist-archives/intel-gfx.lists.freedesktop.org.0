Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 488BD687FF1
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 15:24:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E4310E56B;
	Thu,  2 Feb 2023 14:24:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C70B10E476;
 Fri, 27 Jan 2023 13:00:38 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 619901FF3C;
 Fri, 27 Jan 2023 13:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1674824436; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=hPAJZRcZIw8l4IeZe9764fbpW5e1B2UJbOXlv7w8laU=;
 b=EXsy5iehcokvf7vDjKGZhIuOEuNiBEgxMJt4TXSJ1fF0VPerj1y2/DuCXlrtN86+j3KnkX
 zL03ou3yuJpDQhbGkVXTYzcsDcZs4oGcLmhDPi6j3EVBPE7JRvIcv/+36VxMUmHN9vBavr
 QbADyJgeTaDEEeHmJHo5wMrHg+4d9Fs=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 1081D1336F;
 Fri, 27 Jan 2023 13:00:36 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id ZYsaA/TK02NIEwAAMHmgww
 (envelope-from <mkoutny@suse.com>); Fri, 27 Jan 2023 13:00:36 +0000
Date: Fri, 27 Jan 2023 14:00:34 +0100
From: Michal =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230127130034.GE3527@blackbody.suse.cz>
References: <20230112165609.1083270-1-tvrtko.ursulin@linux.intel.com>
 <20230123154239.GA24348@blackbody.suse.cz>
 <371f3ce5-3468-b91d-d688-7e89499ff347@linux.intel.com>
 <20230126130050.GA22442@blackbody.suse.cz>
 <Y9KyiCPYj2Mzym3Z@slm.duckdns.org>
 <b8a0872c-fe86-b174-ca3b-0fc04a98e224@linux.intel.com>
 <20230127100428.GA3527@blackbody.suse.cz>
 <246fefac-6c1d-e4f1-c0df-721ca23ab56a@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="tMbDGjvJuJijemkf"
Content-Disposition: inline
In-Reply-To: <246fefac-6c1d-e4f1-c0df-721ca23ab56a@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Thu, 02 Feb 2023 14:24:11 +0000
Subject: Re: [Intel-gfx] [RFC v3 00/12] DRM scheduling cgroup controller
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
Cc: Rob Clark <robdclark@chromium.org>, Kenny.Ho@amd.com,
 Dave Airlie <airlied@redhat.com>,
 =?iso-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--tMbDGjvJuJijemkf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 27, 2023 at 11:40:58AM +0000, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> The main point is, should someone prove me wrong and come up a smarter way
> at some point in the future, then "drm.weight" as an ABI remains compatible
> and the improvement can happen completely under the hood. In the mean time
> users get external control, and _some_ ability to improve the user
> experience with the scenarios such as I described yesterday.

I'm on board now.

(I've done a mental switch of likening this rather to existing IO
control (higher variance of quanta size, worse preemption, limited
effect) than CPU control.)


> Cgroup tree hierarchy modifications being the reason for not converging can
> also happen, but I thought I can hand wave that as not a realistic scenario.
> Perhaps I am not imaginative enough?

My suggestion: simply skip offlined drmcgs instead of restarting whole
iteration. (A respawning cgroup-wrapped job or intentionally adverse
respawner could in my imagination cause that.)

> Under or over-accounting for migrating tasks I don't think can happen since
> I am explicitly handling that.

I'll reply to the patch for better context...

Regards,
Michal

--tMbDGjvJuJijemkf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQTrXXag4J0QvXXBmkMkDQmsBEOquQUCY9PK7AAKCRAkDQmsBEOq
uUvSAP45dKy3+20fgzaJJKeGlOLhVn428dDTDzrsnF0msJguNgEA7HZGBQ9eIq3K
s4r0t9sc6dRojhFsRm6duQjrEGdpFQk=
=+6m2
-----END PGP SIGNATURE-----

--tMbDGjvJuJijemkf--
