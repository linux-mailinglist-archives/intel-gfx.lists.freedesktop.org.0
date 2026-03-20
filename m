Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGM9Em9kwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0EE2F7751
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0324510E567;
	Mon, 23 Mar 2026 16:03:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Q5cWqo8N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com
 [74.125.224.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6156910EB2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 18:09:15 +0000 (UTC)
Received: by mail-yx1-f53.google.com with SMTP id
 956f58d0204a3-64ad46a44easo2059681d50.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 11:09:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774030154; cv=none;
 d=google.com; s=arc-20240605;
 b=P3pre/SaaVu8X9Pi2o+RfVtxCetWjeBepqjKxWtZKFDG6Fc188ORzeXKCgaQZkf71z
 QU1hWx3fz7oewEgIEey8/+Mn2xGCWrRx1kG0KRTDShRC6p1AeQJ+ay6qD6xa8rI7jZn9
 5QI1948r9OWBjvg4JZ5RoFlmZcDWsToQqXBn8LLDF22ae5TE+pCt0ascXb+z9hA2VKpT
 9CYyQN8w6U1VKSElXPQp4iTfN6rWDlKc271E1GKGyGb5aYKyVjLja35ck5LLbpXvpLOL
 I6LvAfVwpLkvcQMJFYRHNKK355yfdQyfZwYfYCjfov38WNbfMFP6PZ4mEW05RQcbxcW/
 GCpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=AWhS4iaGoaPOka2Ug+rWFyTKYlbaHwFlyjwq3H7YvsM=;
 fh=k/LvYW5YDU7x+VDNrZavDGWHd389DwycM+2xEdQyuLQ=;
 b=dc2BYXABL6gP+ERt51bpPMVevcFT9jcsh9lZ1g/tNaE839hV8/4UVn+7oK+R/E1aJE
 7fh/0wTXHtTaJ3okzwsAAHmLQO/NZk0dYbMdy4LSFNI4psZM3yxO8ZOohojYoznk0qVp
 f8Xmp2wM0nBDScCwpYxdXiMcpfCw8j/9upFFzEyiM+yT0ROVfy2UP1N8gWu4hhMvxbpr
 W15ZG+95+QOBVIyUmN7DWhzupIPcA5BUos+VR+V6GGcwLbyH4TSO8IHd+wKhDYq3kO6p
 kM+ebTFlU99LYFAcqp7roUGE7fTD/JjxDOmtyhY2Ao5CElRtk/RcRJOuDzpEFfa7J76J
 ZFiQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774030154; x=1774634954; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AWhS4iaGoaPOka2Ug+rWFyTKYlbaHwFlyjwq3H7YvsM=;
 b=Q5cWqo8NPQoOiU7mAU8XFfDwxfZn0n1os4c8lo4CjVg6z3QGqjnuewocQrW7pva4AU
 3N0/1040N9/YRnzd5M/x0CqKEEYoY9aKkk+k5+5cjGFjxgxVLpLwX3HqWa/XO7aC0dF9
 V8e7eOGIxFiOnTQKWN7yVnKT6KWfiweBRbAgcqhiwM5wDsySlyNRxumJ8vdmYPY1ef5G
 Ksf9TzAEmV/v2CyQiyBJsfw+DexSg1VBJ9mGNwum+qZQVMvBOKqA9bpwPLbo+Tja4FlG
 6y6B6VxvTAWVCuvqjcLVXVPhXeNv+KLMyDvDjKbCDBDJCXcPTVz1v49+iP98Os+BdfBw
 j5fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774030154; x=1774634954;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=AWhS4iaGoaPOka2Ug+rWFyTKYlbaHwFlyjwq3H7YvsM=;
 b=sCSSx+XVs3FibXlMe0pbF+pOcCDp/UiYdQtmdWd3gN7Bo526L5WGkc13UWvFxPVPqP
 osF9KgupBTFpP8FwsrQiceTz+8cNX+eQ1Drj6DJLeWmrAeSZLKTqUukWv4HnzUAjtfGl
 I4J07Y3FBmeiUJ0ta5+unA/EVgbdHb4ZB/s/m36YUkzrPs4mNZC16SVBoSNBZs8yK0Jz
 BtQ1GN9kTUeOn748fZbIzxf7Z7i1bmeDwSm21Sd+y8F6UptsS1NIdFpuwkiQKzSQYnIK
 5+ntT9BSiyWjaO2Bc0S3JzUU/u0JemyKjAPMKUPM0LKAu0MWlwW5LYeMCYYMLkuawrr3
 ioOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUQz4trnn9Q6hCNPF4Z4is/7t5hASmr2qPuy6ffRlV9MW/Lta6U6Xm8US2wEYZCIaSjSAW1hrKMuCU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YybPQxiYavxkD3eqxS5eoALo9+tp9XHq1M2iXS4v4JGxuUiA3vA
 +8fYfc9EK5+oNedI/9apmYrkkWavpyselq/sJxoCYO7ept0z7vcqE9a6cYmBcAJnXqwgJZ5Hy+9
 dNaXTRxWBXqcRmbGr052pnaPEh5SPZeE=
X-Gm-Gg: ATEYQzw3SawL9hWptx7Zc7PVNkL/t44+kcR2MfLhJPQEMyiur+4x3RgIw+7Mpj7Z6Vi
 iNmV4KYppDEbn8dS2AHt4zprCQiv75TCmZ4AOGnFNvK/QMRQTifmm32/KqRqHB2vx4kpxpFQVjj
 Hujz5B/Vfk5ys3xX3SMC38lDJlwKxfESMr/mR/SNHXeWIMlM5v2pYB75dpVmwbMhKjBXl6UtxVe
 w32aC5+3m+1APRJ3WXVQfvqgVlimZvTJJ+bVYTPuVyX5BYlpyzmG5S11lNmrIwgXqXv+Q/SAl5L
 +hH3
X-Received: by 2002:a53:d7c8:0:b0:64c:f90c:743b with SMTP id
 956f58d0204a3-64eaa764fe2mr3121177d50.41.1774030154371; Fri, 20 Mar 2026
 11:09:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-33-jim.cromie@gmail.com>
 <177402491454.6181.12972283720507136037.b4-review@b4>
In-Reply-To: <177402491454.6181.12972283720507136037.b4-review@b4>
From: jim.cromie@gmail.com
Date: Fri, 20 Mar 2026 12:08:48 -0600
X-Gm-Features: AaiRm52OI33ofFnw-Ol-4xRbb4iS7hd6Ofimy35v4GvSaV31JzwNtCu7GJCPT2U
Message-ID: <CAJfuBxwnKXG4d92WOOpiXRDXjFrYFnvfbKXaG5nn4nm4pVyqdQ@mail.gmail.com>
Subject: Re: [PATCH v11 32/65] dyndbg: Harden classmap and callsite validation
To: Louis Chauvet <louis.chauvet@bootlin.com>
Cc: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com, 
 gregkh@linuxfoundation.org, mripard@kernel.org, tzimmermann@suse.de, 
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com, 
 ville.syrjala@linux.intel.com, christian.koenig@amd.com, 
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com, 
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:24 +0000
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
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DATE_IN_PAST(1.00)[69];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:louis.chauvet@bootlin.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: EC0EE2F7751
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 10:42=E2=80=AFAM Louis Chauvet
<louis.chauvet@bootlin.com> wrote:
>
> On Fri, 13 Mar 2026 07:19:57 -0600, Jim Cromie <jim.cromie@gmail.com> wro=
te:
> > diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debu=
g.h
> > index 0d1245aefc69..28684cfc0937 100644
> > --- a/include/linux/dynamic_debug.h
> > +++ b/include/linux/dynamic_debug.h
> > @@ -262,6 +262,8 @@ struct _ddebug_class_param {
> >
> >  #define __DYNAMIC_DEBUG_CLASSMAP_USE(_var, _offset, _uname)          \
> >       extern struct _ddebug_class_map _var;                           \
> > +     static_assert((_offset) >=3D 0 && (_offset) < _DPRINTK_CLASS_DFLT=
, \
> > +                   "classmap use offset must be in 0..62");          \
>
> Can't you also check the offset+base?

If I dont already check, I can. theyre all constants.

>
> >
> > diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
> > index 2083a8546460..635df6edb4cf 100644
> > --- a/lib/dynamic_debug.c
> > +++ b/lib/dynamic_debug.c
> > @@ -1404,9 +1404,8 @@ static void ddebug_apply_class_users(const struct=
 _ddebug_info *di)
> >       (__dst)->info._vec.len =3D __nc;                                 =
 \
> >  })
> >
> > -static int __maybe_unused
> > -ddebug_class_range_overlap(struct _ddebug_class_map *cm,
> > -                        u64 *reserved_ids)
> > +static int ddebug_class_range_overlap(struct _ddebug_class_map *cm,
> > +                                   u64 *reserved_ids)
>
> I think you can remove the __maybe_unused earlier in the series (23/65
> seems to use it).

yeah that sounds correct.

>
> > @@ -1454,10 +1471,33 @@ static int ddebug_add_module(struct _ddebug_inf=
o *di)
> > [ ... skip 5 lines ... ]
> > +     /* validate class map types and the per-module 0..62 class_id spa=
ce */
> > +     for_subvec(i, cm, &dt->info, maps) {
> > +             if (cm->map_type > DD_CLASS_TYPE_LEVEL_NUM) {
> > +                     pr_err("module %s has unknown classmap type %d\n"=
, dt->info.mod_name, cm->map_type);
> > +                     goto cleanup;
> > +             }
>
> I think this check could be inserted earlier.

ya this could be compile-time too.

>
> --
> Louis Chauvet <louis.chauvet@bootlin.com>
