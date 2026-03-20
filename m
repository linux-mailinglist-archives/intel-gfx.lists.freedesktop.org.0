Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMLvKmdkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7CB2F7696
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC7CB10E547;
	Mon, 23 Mar 2026 16:03:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZW7ipYjC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com
 [209.85.128.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0115C10E466
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 17:52:47 +0000 (UTC)
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-7986e0553bdso23267457b3.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 10:52:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774029167; cv=none;
 d=google.com; s=arc-20240605;
 b=MDqtusK8ZKWrW6ayeCtZr2FLO6f3QtSKD5hTK26X7zPctdRlARzmFlNZv9+6OD9C6y
 78yRVGBzo98bWS69mLm7AX1zWPhbLyzBtrD3sxTyF+zUZtsp/qQNRhcevwsXm3n1gPqc
 fN0ZW201XcCU9k1ssQo7engfLomRY1XZSxJPtdgk1b89MB+57Sj00nhhaqdXJEZ2uJaF
 sjfqBCSVBt1THVvAUCXvMiyuPYK5+Pi1cMTHu/Gb6HVphSFtrhje28E+Qh/xhcVRL9tz
 qPtYi8pH8EvqiXk8t4wUurgekLzkTa2jyzUyhGmW7v9xTQbk8NIFkF7oXskSS4KnZq50
 ysJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=jzqKUayHP9edpbuU79uv3nBiFh6UCYpOtYrxmChIqeY=;
 fh=ZIh6x5CetmHeCHT295XQDDrCKE/7nK1I5Cr4rWSq1QU=;
 b=G9xAQE2eYJK2NFVDBE3sfBhS86CFuzlDnpWJZnAdbQwBwY39Wm5MU5dRm3Y5Qyxs2G
 lae9F4qhSTNk78/Lp749mu5CxiIR60IcgEo3Jnq64tu3+IGO5wlfWb5csaWS/f2b/LEE
 VtWpezzdOnaH5oCjEHFkYJicm03BJaWC7vo8Y1+4WtE+T7miF29S/6CfYtGsT3anvuc9
 2HmTutK4vas7KTNe8LLlIdrUpZj98P7Bu2CdKR7tHnvnOEpeYjG1GV0DK8WSoc+eLu9i
 aWYNO7qVjn8KFUhIHzMalSovC+W5Gfqp500cs9Ob3Paloufjp/Xa8f393V/ewCHxB9uR
 ezzw==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774029167; x=1774633967; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jzqKUayHP9edpbuU79uv3nBiFh6UCYpOtYrxmChIqeY=;
 b=ZW7ipYjC+vyFBTKUCqFZxZtXbDvuUldJlw4g3RYF8ihj0FemZ2E1RenqNuchTzmRL8
 kjPTGmWf3Dl6qS9fczrRaW7YuhR1bk6N0xhg6cFeCE+gxpE4RfObNrxS+h1ueppUamPV
 WhtyAzTpVZI/XcSfyUwp8Z74utFaFc+5K0Qh7eYrFomClJGA5J/uLiR50pwigmH2qdpv
 QgBkezSzLCUdsqKLY3Nh3nzTCdAmlTyp9OxKbD+UKWTZ9PHQS3vhQQxpHWRU8y3fJDT3
 oALYIIv8GdmUAy4f4lG0zo42QnVxSo7DhIEOTZ/ZUSdWvgXVpWgzwz0brb3m7Z80SetF
 TWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774029167; x=1774633967;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=jzqKUayHP9edpbuU79uv3nBiFh6UCYpOtYrxmChIqeY=;
 b=XHDUIyxOAOlUh6ZHnunnanST2lnJPKC2HDnItl4GZhF9zAm+XdWhOE/peEWYKO7IaW
 oJ7Oi7bT4uvgtp1OCwZJk0xwODJTsBDPoAE7E11coeHLCGJbyRBUT2OFEeruj8BQtDdW
 DTmhRysUhY3uD0gIAf3OYOUYPl5GmcbTvFIIHSQC8ZM4kjNR9xU2kJ+vyRqNSdhAsb0r
 DYSXOtplOAUp/uAz0hyZTc/wtPB8oNiMRDiEs15TRMXPnQA0IcvCBkfOrOm56mt15Apk
 hOdJA+u3QuuF2GAqIMEi4qylUF1/tXVd1fbd5AdTh2vGv95O7BNZm0ZiPRZfD6NZz0wM
 4ZkQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUbhiOgkM+qfuyOjxWR8FIUPovT8St3qP1t09RTzymAX7BWuU3Ndj0uZ6sKxLYd8ry0HNw7oHyHW10=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxSGKv4EgwxKjTnIpav7JAxIEoQwQcHtkTLap4oZofPzF6rUX29
 n3q1EmHBNeLphfepE0sfpptDFrVqcTlExcOPF26EEsVvBCYpVV1Z6oYSh1Q+ABH1ZyP5fRwuKIQ
 GcgNStn3TyUna8EsTLfJT2s+5UNCi8mw=
X-Gm-Gg: ATEYQzw66ldtsRl2r1eBa/+xPoz9AFoez2HUhTf/Xt66/2YTemXiOaRYPRjYmMwPdF5
 WJ9qUnYS/hCUEGclt6n2TyZ1eNo2luB7GvamRaNMMxlrTaMGz7HoJSsiREXR9poO0yh4sIMMN1g
 FlF4i6GfPYhv5wPMLKcXn66C5nRQMSfYvWpqKcU0tgUCyqYvwT2jvWB9Yi+ci3/FE6SIeoZSwNq
 i5uE/zCelK62S1gLI9gRFq/+9QCuclYIx9QiBX4uikmdgNx4NoqXZ19mr0suQF6AIDgktIR1Kgb
 fvK3
X-Received: by 2002:a05:690e:e83:b0:64e:a9a1:fdb9 with SMTP id
 956f58d0204a3-64eaa702c33mr4585474d50.34.1774029166611; Fri, 20 Mar 2026
 10:52:46 -0700 (PDT)
MIME-Version: 1.0
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-25-jim.cromie@gmail.com>
 <177402491443.6181.60919381684088042.b4-review@b4>
In-Reply-To: <177402491443.6181.60919381684088042.b4-review@b4>
From: jim.cromie@gmail.com
Date: Fri, 20 Mar 2026 11:52:19 -0600
X-Gm-Features: AaiRm530GL692oa9s3DUJ1CJBDaPg95JNvy-jkTucGT5VXQChAM653FPkofN1SA
Message-ID: <CAJfuBxysWdtEQAd6X35vMGhDA22Woyd28OzQF1nRW8+j8oOGXQ@mail.gmail.com>
Subject: Re: [PATCH v11 24/65] dyndbg: check DYNAMIC_DEBUG_CLASSMAP_DEFINE
 args at compile-time
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
	DATE_IN_PAST(1.00)[70];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid,bootlin.com:email]
X-Rspamd-Queue-Id: 3F7CB2F7696
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 10:42=E2=80=AFAM Louis Chauvet
<louis.chauvet@bootlin.com> wrote:
>
> On Fri, 13 Mar 2026 07:19:49 -0600, Jim Cromie <jim.cromie@gmail.com> wro=
te:
> > diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
> > index 1ba4be9a403a..b2bdfdfb6ba1 100644
> > --- a/lib/test_dynamic_debug.c
> > +++ b/lib/test_dynamic_debug.c
> > @@ -146,8 +146,19 @@ DYNDBG_CLASSMAP_DEFINE(classid_range_conflict, 0, =
D2_CORE + 1, "D3_CORE");
> > [ ... skip 4 lines ... ]
> > +/*
> > + * Exersize compile-time arg-checks in DYNAMIC_DEBUG_CLASSMAP_DEFINE.
> > + * These will break compilation.
> > + */
> > +DYNAMIC_DEBUG_CLASSMAP_DEFINE(fail_base_neg, 0, -1, "NEGATIVE_BASE_ARG=
");
> > +DYNAMIC_DEBUG_CLASSMAP_DEFINE(fail_base_big, 0, 100, "TOOBIG_BASE_ARG"=
);
>
> Maybe add a:
>
> DYNAMIC_DEBUG_CLASSMAP_DEFINE(cat_disjoint_bits, 0, 61, "TOOLONG");
>
> So you can also check that an overflow is really checked.
>

IIUC, you want a class that has legal offset, but extends past 63 ?
If so, I think I can add / test that.



> --
> Louis Chauvet <louis.chauvet@bootlin.com>
