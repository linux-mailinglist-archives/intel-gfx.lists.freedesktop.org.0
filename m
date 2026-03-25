Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJj3DDwfxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:57:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC4A334CDE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:57:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C7A810E9D4;
	Thu, 26 Mar 2026 11:57:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C63E10E873
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 17:31:05 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id
 46e09a7af769-7d4c383f2fcso46134a34.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 10:31:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774459865; cv=none;
 d=google.com; s=arc-20240605;
 b=MOyclTooVoMrhSiYZ98JpO4r01KAcoaOMaXXuwyOkwhpuwGhh2eBpw4CxwkTdUbUvH
 aXF0mJmdR/9BP05wEyRzpZCigqQ9Q6XTX5wuDZtZEiJyDUg6WJ/zNn+N3iqhtvvqpBW3
 MqLe5+ovtGYM1dD/cNiVoaR6QgQTkbrd8fI9SO3YnI+1AffpQArUGZfS7jptAFcNKF8/
 mdzGxZ+34yk3HLzsfBDhWlDTImBo3NsT6YXKxvReZbH+UcRlqsWIsir6dBGhXHLYMZvL
 wbd1YnASo61BpoZUOmniMcP4D6gj6ttXWgPvCCqiU3XLZsUt2lgDHWDHqPCJXdpk4Aey
 zWSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=OHptU9W40TSuD9eB1TqhvyWtbUTPZs2Sn4CfEzPvF3U=;
 fh=R5x5VGnXexl2FfqLM1sv0mZJvqM8ukSE/m47vWiX0r8=;
 b=gm1qR6BVj2pkFtDh1YUdoffrfJqe2IR9ZU9Xec87v72mU8HfYmZZTtJ5QhvkTI4Wyx
 U/8D8j9yI4JJ/5h9SHPjZJdumVFX3f3iugXe+hUsEn0cmpKqOR6o7jSD73HYF8BhB56S
 gPSgsDNuZ/dmixnE42gnqY2+cIuXk9WhiGSv3YNXFrb5cC/BeO1fFEOpC+5rrH4gm9nV
 iM4FFmigo0AQQEQy5OnZW4Tw7pH4oPIeZPdhsRHPspr+7lHGLD6Ulc2Ft2O9/rMvs3Lk
 i3ZBt7xKJUDc/oEP33eDelD67okP7Be2oL32GhagCPzcMyY7hN3k4rID3sHqv5H05GAQ
 Igbg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774459865; x=1775064665; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=OHptU9W40TSuD9eB1TqhvyWtbUTPZs2Sn4CfEzPvF3U=;
 b=T2cahSm8rqCjBkKelDUrz30hrl6S9WrEDYWd4ZT1V995LNKb/H3elNT6OhgprDMCyW
 cjAnoCwCeVv2H+30gr8zL/bP05oQB+zzXanYxha1VJPelho+ybckg9+iLkkqsxMTVYRP
 GdUouXk+EmBREzneRKM1XUqySdnqPgIm/rq3UEymXogeCWCgrsSi7YU3bD6oc8ciX6OT
 52kD0Vsp4zIFkrd1eaBmg1RjGFgyErbtZxlVNiWE1XfMz6+wt2hUMCRYI1ta7K6W4yna
 Wmm1J7HFerL7J2sr80F04VkyUfcEPTDrB23FT18vW8TJN8ZbVYeWNFtVlZLXwpMgxkLK
 vxfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774459865; x=1775064665;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OHptU9W40TSuD9eB1TqhvyWtbUTPZs2Sn4CfEzPvF3U=;
 b=CvK3+qs5N8ho1aKusWOam2FmNjlWWzitgrl8Ha4dK99Te1FofMvrqj9kjXGdWx4vtL
 FGJ3rxNjOr7VM5nYAbDcnJBDn4f/2UecMiLYlWCZoE0MFFvntVPDlpPj0xFqL/XVEUIS
 GhuNf3u41vSNcltwkGK5ACnL2IKmgR+1YxmC8vP3Qbieo8X1MvJPfB2q+QcvaJSyFDsl
 IVCoJdOwJlqmm5m1swRw0ea0Hhqdvyde75aUh62gTFMk1LRtJx6dS6qGipLdyILTF9fZ
 Ek7trnPYizmY4L1w7HaUfxdpXjqUhhbux0dRBh4cAe1waYdX6sQJDYK/V4h4QV+l1B7k
 f3/A==
X-Forwarded-Encrypted: i=1;
 AJvYcCU1QduzIBbsNDnH77QWeLIUkim7LHby3ZwPCoxHIQnMREN2QlmC1MxgX05ES764CvmnVz4sArAwsRQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx/Ibch0BgyGM5L4hTSsnOiJfiwURuxSHT3JSsoKd4DhAXU0dsK
 RKjwghYAAhzpAipXMQCN81TqrtzNyl+r7oF/byphFzokAO7n9Wy0iZ29OfB9SjT6wplC6Mro5CA
 RXUOC1vl8NiKMGXyhWW1WMiFizJBHCzg=
X-Gm-Gg: ATEYQzwOpJOJEg/sRBJrfjJ4UKhi4ef7HDUB5CgRn0zxlLxXluffFX4nt3hC7yr+adm
 xs9rcDRvIAUxPrpv3IPEl+LF3jY74t+9U/XZsZ9cGYzTPeSEHk+hfjP2C6YQXnPKijDfP+2HY9T
 EA2UZIjkK8VgGB6kdXxyuKnNlwYGgOw5PmwIHNU/7nHoepMxVTw72d9tqURitzskLyoRmCHaXVW
 KWfw3S84vxWuwOzQmpVofMyi1f5O9SaBBDQx4Gd1qONbfYDlb6VoAAUGnHw8zaKYXEaHRi04VtI
 UHMxrE4=
X-Received: by 2002:a05:6830:3509:b0:7d7:ecda:cc3f with SMTP id
 46e09a7af769-7d9d62bad58mr2678296a34.0.1774459864523; Wed, 25 Mar 2026
 10:31:04 -0700 (PDT)
MIME-Version: 1.0
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <177442567303.11552.5320450093167124387@jlahtine-mobl>
 <CANq=4mAEmEQWTUBpDJAgaiw930NUzL6-7EV-Y2WqLGst2YWLiw@mail.gmail.com>
 <177444763778.66558.14341959485998155867@jlahtine-mobl>
 <acQDZJFtsEtm183A@intel.com>
 <CANq=4mDtmtz5ZFjCCoeAXEWN82J9m8+DLochsNc6BzfwJ6Pdpg@mail.gmail.com>
In-Reply-To: <CANq=4mDtmtz5ZFjCCoeAXEWN82J9m8+DLochsNc6BzfwJ6Pdpg@mail.gmail.com>
From: Yassine Mounir <sosohero200@gmail.com>
Date: Wed, 25 Mar 2026 13:30:52 -0400
X-Gm-Features: AaiRm52zeAiE3Cx2mZNzPX27Y6JzmUvyy8XbjFtW3O9Ke7_8gPR0bTkKJgCNmYs
Message-ID: <CANq=4mC3+B4akvpp=nr_w1bbnhDwUXx=EzyQtHQpR9DN=ewCMA@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/gem: Fix UAF race in eb_relocate_vma
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000e4a7bc064ddca128"
X-Mailman-Approved-At: Thu, 26 Mar 2026 11:57:38 +0000
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:gregkh@linuxfoundation.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,freedesktop.org:url]
X-Rspamd-Queue-Id: 9AC4A334CDE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--000000000000e4a7bc064ddca128
Content-Type: text/plain; charset="UTF-8"

"Hi Rodrigo, I've submitted the issue and the V2 patch under *#15882*. I've
marked it as confidential as it addresses a potential UAF security risk.
Looking forward to your review."

On Wed, 25 Mar 2026 at 13:30, Yassine Mounir <sosohero200@gmail.com> wrote:

> "Hi Rodrigo,
>
> I am currently following your instructions to file the bug report on
> GitLab. However, my new GitLab account is pending manual approval due to
> the current spam restrictions on freedesktop.org. I have contacted the
> admins for full permissions.
>
> In the meantime, I have prepared all the logs (KASAN splat from vanilla
> drm-tip and the clean dmesg from the patched version). As soon as the
> account is active, I will post the link here.
>
> Thank you for your patience."
>
>
> On Wed, 25 Mar 2026 at 11:47, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>
>> On Wed, Mar 25, 2026 at 04:07:17PM +0200, Joonas Lahtinen wrote:
>> > Quoting Yassine Mounir (2026-03-25 10:20:58)
>> > > Hi Joonas,
>> > > Thank you for the detailed feedback. I apologize for the double tag
>> and the
>> > > direct submission to Greg; I'm still refining my workflow.
>> >
>> > Ok, then to level set some expectations:
>> >
>> > Have you actually confirmed that the code you have submitted compiles
>> > and does fix the bug you reported?
>> >
>> > Expectation is that you run the reproducer on top of drm-tip and see a
>> > crash where you pick the dmesg/KASAN splat from, then you run drm-tip
>> > with the patch you have prepared and there is no crash.
>>
>> Exactly.
>>
>> Before any further submission, please let's get back to square 0 here.
>>
>> 0. Please file a bug to our gilab/issues:
>> https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
>>
>> Do that against the drm-tip branch and provide all the log information
>> from your experiments.
>>
>> 1. If you have a proposed patch, also please confirm that it actually fix
>> the issues that you are solving.
>>
>> 2. Whenever using AI to help you with the code please ensure you comply
>> with this:
>>
>> Documentation/process/generated-content.rst
>>
>> Thanks,
>> Rodrigo.
>>
>> >
>> > Regards, Joonas
>>
>

--000000000000e4a7bc064ddca128
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&quot;Hi Rodrigo,
I&#39;ve submitted the issue and the V2 patch under <b>#15882</b>. I&#39;ve=
 marked it as confidential as it addresses a potential UAF security risk. L=
ooking forward to your review.&quot;</div><br><div class=3D"gmail_quote gma=
il_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 25 Mar 20=
26 at 13:30, Yassine Mounir &lt;<a href=3D"mailto:sosohero200@gmail.com">so=
sohero200@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><blockquote><p>&quot;Hi Rodrigo,</p><p>=
I am currently following your instructions to file the bug report on GitLab=
.
However, my new GitLab account is pending manual approval due to the curren=
t spam restrictions on <a href=3D"http://freedesktop.org" target=3D"_blank"=
>freedesktop.org</a>. I have contacted the admins for full permissions.</p>=
<p>In the meantime, I have prepared all the logs (KASAN splat from vanilla =
drm-tip and the clean dmesg from the patched version). As soon as the accou=
nt is active, I will post the link here.</p><p>Thank you for your patience.=
&quot;</p></blockquote></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, 25 Mar 2026 at 11:47, Rodrigo Vivi &lt;<a hr=
ef=3D"mailto:rodrigo.vivi@intel.com" target=3D"_blank">rodrigo.vivi@intel.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Wed, Mar 25, 2026 at 04:07:17PM +0200, Joonas Lahtinen wrote:<br>
&gt; Quoting Yassine Mounir (2026-03-25 10:20:58)<br>
&gt; &gt; Hi Joonas,<br>
&gt; &gt; Thank you for the detailed feedback. I apologize for the double t=
ag and the<br>
&gt; &gt; direct submission to Greg; I&#39;m still refining my workflow.<br=
>
&gt; <br>
&gt; Ok, then to level set some expectations:<br>
&gt; <br>
&gt; Have you actually confirmed that the code you have submitted compiles<=
br>
&gt; and does fix the bug you reported?<br>
&gt; <br>
&gt; Expectation is that you run the reproducer on top of drm-tip and see a=
<br>
&gt; crash where you pick the dmesg/KASAN splat from, then you run drm-tip<=
br>
&gt; with the patch you have prepared and there is no crash.<br>
<br>
Exactly.<br>
<br>
Before any further submission, please let&#39;s get back to square 0 here.<=
br>
<br>
0. Please file a bug to our gilab/issues:<br>
<a href=3D"https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bu=
gs.html" rel=3D"noreferrer" target=3D"_blank">https://drm.pages.freedesktop=
.org/intel-docs/how-to-file-i915-bugs.html</a><br>
<br>
Do that against the drm-tip branch and provide all the log information<br>
from your experiments.<br>
<br>
1. If you have a proposed patch, also please confirm that it actually fix<b=
r>
the issues that you are solving.<br>
<br>
2. Whenever using AI to help you with the code please ensure you comply<br>
with this:<br>
<br>
Documentation/process/generated-content.rst<br>
<br>
Thanks,<br>
Rodrigo.<br>
<br>
&gt; <br>
&gt; Regards, Joonas<br>
</blockquote></div>
</blockquote></div>

--000000000000e4a7bc064ddca128--
