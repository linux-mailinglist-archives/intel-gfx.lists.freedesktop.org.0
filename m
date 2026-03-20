Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHwEHOFkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:05:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C64EA2F78EE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:05:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FB7610E5B5;
	Mon, 23 Mar 2026 16:05:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nKjWhvAP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com
 [74.125.224.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4F410EA70
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 17:36:34 +0000 (UTC)
Received: by mail-yx1-f44.google.com with SMTP id
 956f58d0204a3-64acd19e1dfso1978058d50.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 10:36:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774028194; cv=none;
 d=google.com; s=arc-20240605;
 b=eYHwR15VcEPMY8PJhHiJdCVaG2mldundJQ8l91ItWCLDO5qV7DlnTu5X+UwHijmIhe
 NyggfqFOOwQzHozoGO9bSu9G8ZgZ/6gSlZlQQEnO81pgp/ucsrYriYC4yOJKgshfEEw/
 zvbHDb6YruWW73oMoAn4t8XfB+UgV9yZCz5JU3WFfaEcjxPXPMV4WvcSot7rW07AyJyb
 Q2pFAuecBhA5VwJW4ud9bFR3pUxkj8OYMklDfNU8y41yTOF4Uvs4xa8v58wpF5BHBvy2
 9DudvnGrtGORSCeQateN8JnPnuMhHzeQMRqNqatZZ9mEP9WgtyBG47/1VvUna/zdFUab
 ZCeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=BgGZTOzZCC8ovn7k66XyuhZliqBNi9YYaqpJPuy2zpc=;
 fh=HFwP0yl3k/0CX24IszCpJLVJ1Tu+RIyMws6fdrjP0cw=;
 b=CcTm0hraInwjbyO+SdRYCwyH93JIQnXKhY8iQNwBB4saVqya2oopaX8j0DCyVG8vH9
 t4kWTcpTSHhFyje62XUjB5qCERUeNsQofOFq8wjmkU8SeRqaPtESlgS8NHfkxWJ7Ucol
 +E6oNnnFdTxS6m5irTcoNOMEudjdQK5oCX2gZ8mt+Dyf611FHFW0AudUk329LaUWAkEP
 vFDtYFJIBhYQOa2W9AbYTyTphmdc480u4t18AlDFkPxlJnyrrD5xPlL1Op0hnvgL97zs
 D6wGP7nN3T+FTwLVGlFDOCo1bo9gS62nd6LQkTL+4wLqVGnlry13s9IgXIjVn9+icQvO
 /n0A==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774028194; x=1774632994; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BgGZTOzZCC8ovn7k66XyuhZliqBNi9YYaqpJPuy2zpc=;
 b=nKjWhvAPSaT3zuQMVGrpua3VamU6vnb1satxxSu70jcVV6JAEq8VyCoH0OH6IyPOuh
 A5n2nSbKsLv5wtlcw9A44XJ+jDLbDAB49M28EFttNNiAyLLgRwtLOhtnaMIxPJcsqJI7
 wSPvIGCpEfQgjVIWllXn2fSiOt+OyayVHu4VK+wCERcQh4gkBvXkj2ouu0KnwjgVuujI
 5tFujABDlFp2qWRqPa52VVIFDz+yhfZmjw6175rpyGB2M9OaoO938gxal6XRKiR5efkb
 VZ+P5RmoQBXO8w2Bii1mQZyIwWLkSZhg7o2Ih2xg43LpwtIEm7cPpFRS28J5L1GQEgQr
 Q34Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774028194; x=1774632994;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=BgGZTOzZCC8ovn7k66XyuhZliqBNi9YYaqpJPuy2zpc=;
 b=R1lgSP7Ljj4b1H+C3qO8sVHlmfLwCtw0VIMbsUf53F51L6pUQ2k0VKtziDCbi6F6hO
 LStaXKXKvAKkITH2hxPe+Ia+1YrxSZcmW9yeyWocem+/TtwvzVD8SBHu/N7fftHWo+BY
 NDmopzX8G7F3JMSGdO14yWzxkOboY0VH8a+BMCSM81aOffCoBQNBuhLInaawZo2Wtbny
 RGOrdkpKXsQabyG08En/SKwzt9GuxEGpF21AlYzRa3QoBCIgf8dstUtNGfXidt4qQia/
 jKl83CvWJeQcXNDZgdg/D6xW3R6I+YS1/9HwsXON2Oiu3iI6S5VqocwjY6lnranLB+T5
 lsNA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU83juqMO5IdBB5gbmfn3M8uIK6DU7jQh0MGlNQKPXUDiCCfJcpIDA0IyTyMkJ3uVdyDb6Bl4Wx2e0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxfg1z6lKnCMZt6bD9KfUJKhDlgJyMxHIBoxuWE9RQkk1odUXXb
 1+EZ7VD91V/6EG2QZ/2QsQAFiNhWXrfhBO5x7oux//OMq6gKHDPC3GA3SJ4k+wmUUE2OXbhPTPT
 8pL40kGKiqJR+EkEZsd1SH0L2W8wlovE=
X-Gm-Gg: ATEYQzwBDxuZwRGDPIKrAbFI6DdPJi6yXrzKvYKpQzfMTrzU1WxjiR8Ju5FobmtAVhh
 qUIYGr8aCfzHrJN3gbO0i0ehxVN9o8xTaAccT88MQSKwPjEvgTpqFoSFwIxL7KR7zJ/aMTPRbvS
 M2kuZXf+7uLvEjao/I49q+0cJBuKZgT6nh1T4Txb6MA+yA0cnFhOeZLhRAA+a4i/76xpoV8Jpiw
 iHHx/MKHly1O3KWAtn0BYNQEwCAp2La/A3NqARL2cCxw/88ZmDy06WRf9S2Gt5hAKztnC3K1Jf5
 2G/4
X-Received: by 2002:a53:bb08:0:b0:64c:9c10:c09 with SMTP id
 956f58d0204a3-64eaa7b37demr3014158d50.51.1774028193589; Fri, 20 Mar 2026
 10:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-17-jim.cromie@gmail.com>
 <177402491432.6181.1032037030316089534.b4-review@b4>
In-Reply-To: <177402491432.6181.1032037030316089534.b4-review@b4>
From: jim.cromie@gmail.com
Date: Fri, 20 Mar 2026 11:36:07 -0600
X-Gm-Features: AaiRm523rwSycvdGB1zaTykXeTcT9kD3zP9a6PiLV5_LFsq_fGCRDaXzKyLP7BM
Message-ID: <CAJfuBxy4Tqg5nsgLHgYFEX0F=3h_XkSD5skmy+GypoTBwB+a1w@mail.gmail.com>
Subject: Re: [PATCH v11 16/65] dyndbg,
 module: make proper substructs in _ddebug_info
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
X-Spamd-Result: default: False [2.49 / 15.00];
	DATE_IN_PAST(1.00)[70];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:louis.chauvet@bootlin.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C64EA2F78EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 10:41=E2=80=AFAM Louis Chauvet
<louis.chauvet@bootlin.com> wrote:
>
> On Fri, 13 Mar 2026 07:19:41 -0600, Jim Cromie <jim.cromie@gmail.com> wro=
te:
> > diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debu=
g.h
> > index 9fd36339db52..b84518b70a6e 100644
> > --- a/include/linux/dynamic_debug.h
> > +++ b/include/linux/dynamic_debug.h
> > @@ -83,30 +83,42 @@ enum class_map_type {
> > [ ... skip 3 lines ... ]
> > -struct ddebug_class_map {
> > -     struct module *mod;
> > -     const char *mod_name;   /* needed for builtins */
> > +struct _ddebug_class_map {
> > +     struct module *mod;     /* NULL for builtins */
> > +     const char *mod_name;
>
> mod_name is not needed for builtins anymore?

it is needed still for builtins, because the mod ptr is null,
which can supply mod_name for loadable modules.
I can restore the comment if you think its still helpful / not redundant.

>
> > @@ -125,8 +137,8 @@ struct ddebug_class_param {
> >   */
> >  #define DECLARE_DYNDBG_CLASSMAP(_var, _maptype, _base, ...)          \
> >       static const char *_var##_classnames[] =3D { __VA_ARGS__ };      =
 \
> > -     static struct ddebug_class_map __aligned(8) __used              \
> > -             __section("__dyndbg_classes") _var =3D {                 =
 \
> > +     static struct _ddebug_class_map __aligned(8) __used             \
>
> Maybe a dumb question: in a previous patch you added ALIGN(8) for the sam=
e
> __section, both are really needed?

its a different macro, so I think it is needed.
Note that the macro is deprecated, and will be removed
as soon as DRM uses are dropped.

>
> >
> > diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
> > index cb7bfe8729a7..f47fdb769d7a 100644
> > --- a/lib/dynamic_debug.c
> > +++ b/lib/dynamic_debug.c
> > @@ -1254,18 +1255,18 @@ static void ddebug_attach_module_classes(struct=
 ddebug_table *dt, struct _ddebug
> > [ ... skip 13 lines ... ]
> >               }
> >       }
> >       if (nc) {
> > -             dt->num_classes =3D nc;
> > +             dt->info.maps.len =3D nc;
> >               vpr_info("module:%s attached %d classes\n", dt->mod_name,=
 nc);
>
> IIUC, maps and classes are the same thing, can you do a s/classes/maps/ i=
n
> the vpr_*?

yes - class_maps is probably clearest - closest match to code too.

>
> --
> Louis Chauvet <louis.chauvet@bootlin.com>
