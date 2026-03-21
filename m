Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPcGLG1kwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4AF2F772B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE6610E557;
	Mon, 23 Mar 2026 16:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OqeQrTcq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com
 [74.125.224.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E31B10E1AE
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Mar 2026 13:57:40 +0000 (UTC)
Received: by mail-yx1-f50.google.com with SMTP id
 956f58d0204a3-64ad79dfb7cso3553585d50.2
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Mar 2026 06:57:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774101459; cv=none;
 d=google.com; s=arc-20240605;
 b=JATklXBRvUfiR6HjwXaohamLbq7pGXxB48R8hbd41OMke89iOu9oMy/vXpJHTrw+eN
 o1Sg7tpEPm7IJVRM+fvNJz8bUeUHI1v9n2uqGV+UtBNZRc9F7jrnWl67ThPj7y7fq+5L
 vALkvqmE69aW6G1wsR40ZhMqbV22c/cD9h4OWzfg2ahjXyNyTwuQjkvkpR0/lNu3Ic1U
 A7DeHo5o8xl8CWdBQ2ip5MxSyWhGHML/9f2wbA3FswXb523Unco4GoH5z1Xk6JopjrT/
 oa5oP3SkyIchul415ZjvU05v229leNumg8I11UpEDSFTC81X9fJh/3+EAIr5/cNLts2D
 OuDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=7EPArrwVbc5ps73sNakpJn6v2WkMzJH48rSxaue61sE=;
 fh=j/lU5pwN4XB0vDJY98T1SUc/SlscLaBFvYzHOk0BtY8=;
 b=IDXhY8Vvx8lHg0SY4O4pCK5EpTBTn7xwGv0o5Opbf8UBGj8V2nFxSysL4PUG9IQwPc
 3WAkSyh8wXzZTY7VNYFmi9fwZMmCIAVjmNp/CxLMT4I/twclgr4G3U/ASG4SYqeG2/fC
 rmaVcW878wIv/spdkLVQVA9fT4zkSVyrFAbyJ4Jq6JEvPk4qjlpwlRAZWfCrSWk+AuzP
 ClWn8qGYrtkHcp67FU2a0G+PzPXFgUlERg9UkkxpSWueD6RUX4u+8GRmNAJxw1wYboFZ
 jqUEgc4YvVWofj96oGwGLPA6pd2B3jD1flxDl6Sqq3qIsOnWVzArgMCMpYDunCGs9Np6
 59+w==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774101459; x=1774706259; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7EPArrwVbc5ps73sNakpJn6v2WkMzJH48rSxaue61sE=;
 b=OqeQrTcqmyAZMuF7te2GIi2jgApHZUeIQUgcOhD0oO2uukKIicevUW6xk12BtY1TSj
 WK8kDMu0WRhmyFtp5qcpnMo5iLqnfzNbZGli36LgLD3Dsncj+aNZ5Gn7sP+BxXRREeRM
 67AXiv2ll/lWX5f2/XYIeXzw2NTbs2ukLuyyU10x9egZLubwP1J1jEnII+3YAEOh7uOk
 P5KqSmTxO65mDxZtkgq+QNxDjoXVS0QaaPri5lEKODVPzykFSe8Hu92kACp4TN9pUKzg
 PzU4Q/VpwKufC5HHzu2D2xgaqbOCh3Cz74b8pDygtOK+oQxBf5DbGYVos9Ofy2T6n1bG
 51Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774101459; x=1774706259;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=7EPArrwVbc5ps73sNakpJn6v2WkMzJH48rSxaue61sE=;
 b=YlGVvMqO8qCJ4tY11/vMPFXWHIC/qmA4QMhx9iCGZO1iLL8vxGFE1bi8Nie2HvjouP
 I+v1G8PdwoH+yUrHfk8yYlL1wkjdEMqzuZHXxFqrSGXzjOhlmnfyIyPAB1wITrYsAL4g
 HSS7YAaSQJPg5hNw0oKKTXfRONO61BzR3l+UForbDCeCUgak0VLd9doKS/M7oh2Aj44f
 7H2aT7NqrzZDtm0oKJCM0mvxgwXk0IfWbNdABE4jEMishvHOT02p/Th1COX/8WIGwl9s
 sd695iYUiiNDTzohe8D6zzSDQP0HSpX2PqP9H38+V7qvXB8tSCdzmUT55uqBKBc52RQx
 KSiA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXWyhL7383cx0jxTlYhZwGuH8op8vAukj6M2cNedz7bXH5btEtVv0vUpUOFPWJQ7Bo9yTf14MSqs58=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzu8NZbVYjyV2/swBPcpDT4nrkS+F0FuguLC5hRo5Csh2bBdSfS
 7HO48b1MCPCRTWxLEW3Cu90QvusKisifPK2Xz/QGsrMTVXizvAA8Fw1VoxVgMcJdVVhLqT+OZYF
 5eDmZw00fZVus+wF1Yn+JD+ursFV2u1A=
X-Gm-Gg: ATEYQzytIwNv6jmc1n3J1zfZWo2aaHooRh7QFiVp3LlnL6ABmEEf9CfQvyDsyuNLlW/
 UMjY0lg3PnO1XDjT588bKy9lw8MUO09/MjpWqR7l/LYU+ciySzdD1CTflS7PHDVouyWAN0CTvdN
 XePl3cYstxpVTdadLoris5eKI26sYk2kVORQiJNnYsPZn+pgQsSBOjb0XZMgnWiu9+jpm2jptgs
 xFNYjVyvZS6kPjTHUDwJoIIj85N7j77Jox/7ljew+1FfHm7jau3H9jvkuG7a2QV/xRR8FEViSPj
 KdZg
X-Received: by 2002:a05:690e:430e:b0:64c:973e:874b with SMTP id
 956f58d0204a3-64eaa87157amr4846578d50.75.1774101458924; Sat, 21 Mar 2026
 06:57:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-64-jim.cromie@gmail.com>
 <177402491483.6181.11788631907510647484.b4-review@b4>
In-Reply-To: <177402491483.6181.11788631907510647484.b4-review@b4>
From: jim.cromie@gmail.com
Date: Sat, 21 Mar 2026 07:57:13 -0600
X-Gm-Features: AaiRm53vuyc7die3mB1r_bZxe4JdiA3Dmzfd_np6AsN6-8INJ152fSJj4AtuU3U
Message-ID: <CAJfuBxxOS7zohPDcgDAPmGBXyY8yGOZfkU_-V=5r-qXUBcpo5w@mail.gmail.com>
Subject: Re: [PATCH v11 63/65] drm_buddy: fix 64-bit truncation in power-of-2
 rounding
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
	DATE_IN_PAST(1.00)[50];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,bootlin.com:url,mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2D4AF2F772B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 10:43=E2=80=AFAM Louis Chauvet
<louis.chauvet@bootlin.com> wrote:
>
> On Fri, 13 Mar 2026 07:20:28 -0600, Jim Cromie <jim.cromie@gmail.com> wro=
te:
> > [...]
> > drm_test_buddy_alloc_exceeds_max_order() uses the on a u64 value,
> > where they silently truncate the 10GB allocation, giving unexpected
> > success in DRM-CI.  (see below the snip).
> >
> > Fix this by replacing the standard macros with safe 64-bit
> > power-of-two calculations using ilog2().
>
> This is a general DRM bug, if you send a new iteration, can you move it a=
t
> then start so it can be applied easly?
>

Yes.  I also sent it separately so it could be just picked up.

> >
> >
> > diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
> > index b27761246d4b..ff158cc1d27e 100644
> > --- a/drivers/gpu/buddy.c
> > +++ b/drivers/gpu/buddy.c
> > @@ -915,7 +915,7 @@ static int __alloc_contig_try_harder(struct gpu_bud=
dy *mm,
> >       u64 modify_size;
> >       int err;
> >
> > -     modify_size =3D rounddown_pow_of_two(size);
> > +     modify_size =3D 1ULL << ilog2(size);
>
> Thanks for catching this issue!
>
> To avoid this kind of issue later / in other parts of the kernel, maybe y=
ou
> can change the macro itself to properly handle u64? I am thinking about
> something similar to ilog2[1]:
>
> ( \
>         (sizeof(n) <=3D 4) ?              \
>         __rounddown_pow_of_two_u32(n) : \
>         __rounddown_pow_of_two_u64(n)   \
> )
>
> [1]:https://elixir.bootlin.com/linux/v6.19.8/source/include/linux/log2.h#=
L156-L164
>

I will take a look, but if you have an itch, dont hesitate.

> --
> Louis Chauvet <louis.chauvet@bootlin.com>
