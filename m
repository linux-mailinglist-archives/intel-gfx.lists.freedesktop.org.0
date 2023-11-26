Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FF07F9668
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 00:21:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 653DE10E0EF;
	Sun, 26 Nov 2023 23:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C0C610E0EF
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Nov 2023 23:21:18 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id
 4fb4d7f45d1cf-543456dbd7bso8884675a12.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Nov 2023 15:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1701040876; x=1701645676;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=kOAE1RED/Xp8KBHUMud6deuOummGFwkrCkMa9fkb62w=;
 b=CZyAOkTA1nRYG2FrDGFTy5CbgMY/MOxnSp0crQdjqMb1Z3BV57a++EgehFgC398ok5
 2eX8Q+rgKyMkDlv0BEwuhQKu3nqHrA2w3oONJA2fqc/79uzaoDDrOJrRodVMYSPudgRj
 GZCOLkuzuRIqdiTK2T8RUAReWpElCvgHGO4Xg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701040876; x=1701645676;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kOAE1RED/Xp8KBHUMud6deuOummGFwkrCkMa9fkb62w=;
 b=d5egrSFWfWEDp1Dtnle7EckVdPLlwi4XiltzEFgeBKJDcvvSGQ2HQExdkjHz5hYzuU
 ykYV74uJJLVy4JINkEtJP2EqZ+H51aHXVO5QkVmTMOuA2/VbUlRL/fs6xp4IVRCYpFqJ
 1LnkUf/Drj7wAgQfXJs6MDt6x6TMGBo/lwjbRr6iw2wfRX6PY+sijxe2M3eVqE0N7lQ+
 kc3/E4W/OK+TYudpws8n1gamoQs6de6qIBIEottfX/64KofVUFxWB4mo95nsmMcGTlOu
 70l5Uhh11OEfBwP46zKUsuii6NBObo2q99A+Xvd1TNXPjmLUbyxBx5E6JdhyRr/Qcquj
 WEcQ==
X-Gm-Message-State: AOJu0YxB8YcjYMquVymOeeELpXCOxG0fU6AQ04QVTgL3QKh5jLM+Kqdb
 PA3Eurn6difPYUTvv+T7f5mSqoPSKzAVM7Z9lf/RhZrh
X-Google-Smtp-Source: AGHT+IEdy7k9cKNBODNlT46XZdEpJNVHuW9/8/Axl0Lgr+V7EbSEmoWHXezgJoMeDrzUC9EnEayBaA==
X-Received: by 2002:a17:906:73c8:b0:a10:1fd1:8ed with SMTP id
 n8-20020a17090673c800b00a101fd108edmr407124ejl.24.1701040876487; 
 Sun, 26 Nov 2023 15:21:16 -0800 (PST)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com.
 [209.85.208.42]) by smtp.gmail.com with ESMTPSA id
 pw10-20020a17090720aa00b0099cce6f7d50sm5024227ejb.64.2023.11.26.15.21.16
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Nov 2023 15:21:16 -0800 (PST)
Received: by mail-ed1-f42.google.com with SMTP id
 4fb4d7f45d1cf-54a94e68fb1so7310825a12.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Nov 2023 15:21:16 -0800 (PST)
X-Received: by 2002:a17:906:105c:b0:9ae:659f:4d2f with SMTP id
 j28-20020a170906105c00b009ae659f4d2fmr9105515ejj.26.1701040875921; Sun, 26
 Nov 2023 15:21:15 -0800 (PST)
MIME-Version: 1.0
References: <202311201406.2022ca3f-oliver.sang@intel.com>
 <CAHk-=wjMKONPsXAJ=yJuPBEAx6HdYRkYE8TdYVBvpm3=x_EnCw@mail.gmail.com>
In-Reply-To: <CAHk-=wjMKONPsXAJ=yJuPBEAx6HdYRkYE8TdYVBvpm3=x_EnCw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 26 Nov 2023 15:20:58 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiCJtLbFWNURB34b9a_R_unaH3CiMRXfkR0-iihB_z68A@mail.gmail.com>
Message-ID: <CAHk-=wiCJtLbFWNURB34b9a_R_unaH3CiMRXfkR0-iihB_z68A@mail.gmail.com>
To: kernel test robot <oliver.sang@intel.com>
Content-Type: multipart/mixed; boundary="00000000000028aa18060b16713c"
Subject: Re: [Intel-gfx] [linus:master] [file] 0ede61d858:
 will-it-scale.per_thread_ops -2.9% regression
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
Cc: Christian Brauner <brauner@kernel.org>, Jann Horn <jannh@google.com>,
 intel-gfx@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, fengwei.yin@intel.com, gfs2@lists.linux.dev,
 linux-fsdevel@vger.kernel.org, feng.tang@intel.com, ying.huang@intel.com,
 oe-lkp@lists.linux.dev, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--00000000000028aa18060b16713c
Content-Type: text/plain; charset="UTF-8"

On Sun, 26 Nov 2023 at 12:23, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> IOW, I might have messed up some "trivial cleanup" when prepping for
> sending it out...

Bah. Famous last words. One of the "trivial cleanups" made the code
more "obvious" by renaming the nospec mask as just "mask".

And that trivial rename broke that patch *entirely*, because now that
name shadowed the "fmode_t" mask argument.

Don't even ask how long it took me to go from "I *tested* this,
dammit, now it doesn't work at all" to "Oh God, I'm so stupid".

So that nobody else would waste any time on this, attached is a new
attempt. This time actually tested *after* the changes.

                  Linus

--00000000000028aa18060b16713c
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-Improve-__fget_files_rcu-code-generation-and-thus-__.patch"
Content-Disposition: attachment; 
	filename="0001-Improve-__fget_files_rcu-code-generation-and-thus-__.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lpg3syhx0>
X-Attachment-Id: f_lpg3syhx0

RnJvbSA0NWY3MGI1NDEzYTY1NGQyMGVhZDQxMGM1MzNlYzFkNjA0YmRiMWUyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBMaW51cyBUb3J2YWxkcyA8dG9ydmFsZHNAbGludXgtZm91bmRh
dGlvbi5vcmc+CkRhdGU6IFN1biwgMjYgTm92IDIwMjMgMTI6MjQ6MzggLTA4MDAKU3ViamVjdDog
W1BBVENIXSBJbXByb3ZlIF9fZmdldF9maWxlc19yY3UoKSBjb2RlIGdlbmVyYXRpb24gKGFuZCB0
aHVzIF9fZmdldF9saWdodCgpKQoKQ29tbWl0IDBlZGU2MWQ4NTg5YyAoImZpbGU6IGNvbnZlcnQg
dG8gU0xBQl9UWVBFU0FGRV9CWV9SQ1UiKSBjYXVzZWQgYQpwZXJmb3JtYW5jZSByZWdyZXNzaW9u
IGFzIHJlcG9ydGVkIGJ5IHRoZSBrZXJuZWwgdGVzdCByb2JvdC4KClRoZSBfX2ZnZXRfbGlnaHQo
KSBmdW5jdGlvbiBpcyBvbmUgb2YgdGhvc2UgY3JpdGljYWwgb25lcyBmb3Igc29tZQpsb2Fkcywg
YW5kIHRoZSBjb2RlIGdlbmVyYXRpb24gd2FzIHVubmVjZXNzYXJpbHkgaW1wYWN0ZWQuICBMZXQn
cyBqdXN0CndyaXRlIHRoYXQgZnVuY3Rpb24gdG8gYmV0dGVyLgoKUmVwb3J0ZWQtYnk6IGtlcm5l
bCB0ZXN0IHJvYm90IDxvbGl2ZXIuc2FuZ0BpbnRlbC5jb20+CkNjOiBDaHJpc3RpYW4gQnJhdW5l
ciA8YnJhdW5lckBrZXJuZWwub3JnPgpDYzogSmFubiBIb3JuIDxqYW5uaEBnb29nbGUuY29tPgpD
YzogTWF0ZXVzeiBHdXppayA8bWpndXppa0BnbWFpbC5jb20+CkNsb3NlczogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvb2UtbGtwLzIwMjMxMTIwMTQwNi4yMDIyY2EzZi1vbGl2ZXIuc2FuZ0BpbnRl
bC5jb20KU2lnbmVkLW9mZi1ieTogTGludXMgVG9ydmFsZHMgPHRvcnZhbGRzQGxpbnV4LWZvdW5k
YXRpb24ub3JnPgotLS0KIGZzL2ZpbGUuYyAgICAgICAgICAgICAgIHwgNDggKysrKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0KIGluY2x1ZGUvbGludXgvZmR0YWJsZS5oIHwg
MTUgKysrKysrKystLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCAyMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy9maWxlLmMgYi9mcy9maWxlLmMKaW5kZXggNWZi
MGIxNDZlNzllLi42MDhiNDgwMmMyMTQgMTAwNjQ0Ci0tLSBhL2ZzL2ZpbGUuYworKysgYi9mcy9m
aWxlLmMKQEAgLTk1OSwzMSArOTU5LDQyIEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGZpbGUgKl9f
ZmdldF9maWxlc19yY3Uoc3RydWN0IGZpbGVzX3N0cnVjdCAqZmlsZXMsCiAJCXN0cnVjdCBmaWxl
ICpmaWxlOwogCQlzdHJ1Y3QgZmR0YWJsZSAqZmR0ID0gcmN1X2RlcmVmZXJlbmNlX3JhdyhmaWxl
cy0+ZmR0KTsKIAkJc3RydWN0IGZpbGUgX19yY3UgKipmZGVudHJ5OworCQl1bnNpZ25lZCBsb25n
IG5vc3BlYzsKIAotCQlpZiAodW5saWtlbHkoZmQgPj0gZmR0LT5tYXhfZmRzKSkKKwkJLyogTWFz
ayBpcyBhIDAgZm9yIGludmFsaWQgZmQncywgfjAgZm9yIHZhbGlkIG9uZXMgKi8KKwkJbm9zcGVj
ID0gYXJyYXlfaW5kZXhfbWFza19ub3NwZWMoZmQsIGZkdC0+bWF4X2Zkcyk7CisKKwkJLyogZmRl
bnRyeSBwb2ludHMgdG8gdGhlICdmZCcgb2Zmc2V0LCBvciBmZHQtPmZkWzBdICovCisJCWZkZW50
cnkgPSBmZHQtPmZkICsgKGZkJm5vc3BlYyk7CisKKwkJLyogRG8gdGhlIGxvYWQsIHRoZW4gbWFz
ayBhbnkgaW52YWxpZCByZXN1bHQgKi8KKwkJZmlsZSA9IHJjdV9kZXJlZmVyZW5jZV9yYXcoKmZk
ZW50cnkpOworCQlmaWxlID0gKHZvaWQgKikobm9zcGVjICYgKHVuc2lnbmVkIGxvbmcpZmlsZSk7
CisKKwkJaWYgKHVubGlrZWx5KCFmaWxlKSkKIAkJCXJldHVybiBOVUxMOwogCi0JCWZkZW50cnkg
PSBmZHQtPmZkICsgYXJyYXlfaW5kZXhfbm9zcGVjKGZkLCBmZHQtPm1heF9mZHMpOworCQkvKgor
CQkgKiBPaywgd2UgaGF2ZSBhIGZpbGUgcG9pbnRlciB0aGF0IHdhcyB2YWxpZCBhdAorCQkgKiBz
b21lIHBvaW50LCBidXQgaXQgbWlnaHQgaGF2ZSBiZWNvbWUgc3RhbGUgc2luY2UuCisJCSAqCisJ
CSAqIFdlIG5lZWQgdG8gY29uZmlybSBpdCBieSBpbmNyZW1lbnRpbmcgdGhlIHJlZmNvdW50CisJ
CSAqIGFuZCB0aGVuIGNoZWNrIHRoZSBsb29rdXAgYWdhaW4uCisJCSAqCisJCSAqIGF0b21pY19s
b25nX2luY19ub3RfemVybygpIGdpdmVzIHVzIGEgZnVsbCBtZW1vcnkKKwkJICogYmFycmllci4g
V2Ugb25seSByZWFsbHkgbmVlZCBhbiAnYWNxdWlyZScgb25lIHRvCisJCSAqIHByb3RlY3QgdGhl
IGxvYWRzIGJlbG93LCBidXQgd2UgZG9uJ3QgaGF2ZSB0aGF0LgorCQkgKi8KKwkJaWYgKHVubGlr
ZWx5KCFhdG9taWNfbG9uZ19pbmNfbm90X3plcm8oJmZpbGUtPmZfY291bnQpKSkKKwkJCWNvbnRp
bnVlOwogCiAJCS8qCi0JCSAqIE9rLCB3ZSBoYXZlIGEgZmlsZSBwb2ludGVyLiBIb3dldmVyLCBi
ZWNhdXNlIHdlIGRvCi0JCSAqIHRoaXMgYWxsIGxvY2tsZXNzbHkgdW5kZXIgUkNVLCB3ZSBtYXkg
YmUgcmFjaW5nIHdpdGgKLQkJICogdGhhdCBmaWxlIGJlaW5nIGNsb3NlZC4KLQkJICoKIAkJICog
U3VjaCBhIHJhY2UgY2FuIHRha2UgdHdvIGZvcm1zOgogCQkgKgogCQkgKiAgKGEpIHRoZSBmaWxl
IHJlZiBhbHJlYWR5IHdlbnQgZG93biB0byB6ZXJvIGFuZCB0aGUKIAkJICogICAgICBmaWxlIGhh
c24ndCBiZWVuIHJldXNlZCB5ZXQgb3IgdGhlIGZpbGUgY291bnQKIAkJICogICAgICBpc24ndCB6
ZXJvIGJ1dCB0aGUgZmlsZSBoYXMgYWxyZWFkeSBiZWVuIHJldXNlZC4KLQkJICovCi0JCWZpbGUg
PSBfX2dldF9maWxlX3JjdShmZGVudHJ5KTsKLQkJaWYgKHVubGlrZWx5KCFmaWxlKSkKLQkJCXJl
dHVybiBOVUxMOwotCi0JCWlmICh1bmxpa2VseShJU19FUlIoZmlsZSkpKQotCQkJY29udGludWU7
Ci0KLQkJLyoKKwkJICoKIAkJICogIChiKSB0aGUgZmlsZSB0YWJsZSBlbnRyeSBoYXMgY2hhbmdl
ZCB1bmRlciB1cy4KIAkJICogICAgICAgTm90ZSB0aGF0IHdlIGRvbid0IG5lZWQgdG8gcmUtY2hl
Y2sgdGhlICdmZHQtPmZkJwogCQkgKiAgICAgICBwb2ludGVyIGhhdmluZyBjaGFuZ2VkLCBiZWNh
dXNlIGl0IGFsd2F5cyBnb2VzCkBAIC05OTEsNyArMTAwMiw4IEBAIHN0YXRpYyBpbmxpbmUgc3Ry
dWN0IGZpbGUgKl9fZmdldF9maWxlc19yY3Uoc3RydWN0IGZpbGVzX3N0cnVjdCAqZmlsZXMsCiAJ
CSAqCiAJCSAqIElmIHNvLCB3ZSBuZWVkIHRvIHB1dCBvdXIgcmVmIGFuZCB0cnkgYWdhaW4uCiAJ
CSAqLwotCQlpZiAodW5saWtlbHkocmN1X2RlcmVmZXJlbmNlX3JhdyhmaWxlcy0+ZmR0KSAhPSBm
ZHQpKSB7CisJCWlmICh1bmxpa2VseShmaWxlICE9IHJjdV9kZXJlZmVyZW5jZV9yYXcoKmZkZW50
cnkpKSB8fAorCQkgICAgdW5saWtlbHkocmN1X2RlcmVmZXJlbmNlX3JhdyhmaWxlcy0+ZmR0KSAh
PSBmZHQpKSB7CiAJCQlmcHV0KGZpbGUpOwogCQkJY29udGludWU7CiAJCX0KQEAgLTExMjgsMTMg
KzExNDAsMTMgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgX19mZ2V0X2xpZ2h0KHVuc2lnbmVkIGlu
dCBmZCwgZm1vZGVfdCBtYXNrKQogCSAqIGF0b21pY19yZWFkX2FjcXVpcmUoKSBwYWlycyB3aXRo
IGF0b21pY19kZWNfYW5kX3Rlc3QoKSBpbgogCSAqIHB1dF9maWxlc19zdHJ1Y3QoKS4KIAkgKi8K
LQlpZiAoYXRvbWljX3JlYWRfYWNxdWlyZSgmZmlsZXMtPmNvdW50KSA9PSAxKSB7CisJaWYgKGxp
a2VseShhdG9taWNfcmVhZF9hY3F1aXJlKCZmaWxlcy0+Y291bnQpID09IDEpKSB7CiAJCWZpbGUg
PSBmaWxlc19sb29rdXBfZmRfcmF3KGZpbGVzLCBmZCk7CiAJCWlmICghZmlsZSB8fCB1bmxpa2Vs
eShmaWxlLT5mX21vZGUgJiBtYXNrKSkKIAkJCXJldHVybiAwOwogCQlyZXR1cm4gKHVuc2lnbmVk
IGxvbmcpZmlsZTsKIAl9IGVsc2UgewotCQlmaWxlID0gX19mZ2V0KGZkLCBtYXNrKTsKKwkJZmls
ZSA9IF9fZmdldF9maWxlcyhmaWxlcywgZmQsIG1hc2spOwogCQlpZiAoIWZpbGUpCiAJCQlyZXR1
cm4gMDsKIAkJcmV0dXJuIEZEUFVUX0ZQVVQgfCAodW5zaWduZWQgbG9uZylmaWxlOwpkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9saW51eC9mZHRhYmxlLmggYi9pbmNsdWRlL2xpbnV4L2ZkdGFibGUuaApp
bmRleCBiYzRjMzI4N2E2NWUuLjgwYmQ3Nzg5YmFiMSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51
eC9mZHRhYmxlLmgKKysrIGIvaW5jbHVkZS9saW51eC9mZHRhYmxlLmgKQEAgLTgzLDEyICs4Mywx
NyBAQCBzdHJ1Y3QgZGVudHJ5Owogc3RhdGljIGlubGluZSBzdHJ1Y3QgZmlsZSAqZmlsZXNfbG9v
a3VwX2ZkX3JhdyhzdHJ1Y3QgZmlsZXNfc3RydWN0ICpmaWxlcywgdW5zaWduZWQgaW50IGZkKQog
ewogCXN0cnVjdCBmZHRhYmxlICpmZHQgPSByY3VfZGVyZWZlcmVuY2VfcmF3KGZpbGVzLT5mZHQp
OworCXVuc2lnbmVkIGxvbmcgbWFzayA9IGFycmF5X2luZGV4X21hc2tfbm9zcGVjKGZkLCBmZHQt
Pm1heF9mZHMpOworCXN0cnVjdCBmaWxlICpuZWVkc19tYXNraW5nOwogCi0JaWYgKGZkIDwgZmR0
LT5tYXhfZmRzKSB7Ci0JCWZkID0gYXJyYXlfaW5kZXhfbm9zcGVjKGZkLCBmZHQtPm1heF9mZHMp
OwotCQlyZXR1cm4gcmN1X2RlcmVmZXJlbmNlX3JhdyhmZHQtPmZkW2ZkXSk7Ci0JfQotCXJldHVy
biBOVUxMOworCS8qCisJICogJ21hc2snIGlzIHplcm8gZm9yIGFuIG91dC1vZi1ib3VuZHMgZmQs
IGFsbCBvbmVzIGZvciBvay4KKwkgKiAnZmQmbWFzaycgaXMgJ2ZkJyBmb3Igb2ssIG9yIDAgZm9y
IG91dCBvZiBib3VuZHMuCisJICoKKwkgKiBBY2Nlc3NpbmcgZmR0LT5mZFswXSBpcyBvaywgYnV0
IG5lZWRzIG1hc2tpbmcgb2YgdGhlIHJlc3VsdC4KKwkgKi8KKwluZWVkc19tYXNraW5nID0gcmN1
X2RlcmVmZXJlbmNlX3JhdyhmZHQtPmZkW2ZkJm1hc2tdKTsKKwlyZXR1cm4gKHN0cnVjdCBmaWxl
ICopKG1hc2sgJiAodW5zaWduZWQgbG9uZyluZWVkc19tYXNraW5nKTsKIH0KIAogc3RhdGljIGlu
bGluZSBzdHJ1Y3QgZmlsZSAqZmlsZXNfbG9va3VwX2ZkX2xvY2tlZChzdHJ1Y3QgZmlsZXNfc3Ry
dWN0ICpmaWxlcywgdW5zaWduZWQgaW50IGZkKQotLSAKMi40My4wLjUuZzM4ZmIxMzdiZGIKCg==
--00000000000028aa18060b16713c--
