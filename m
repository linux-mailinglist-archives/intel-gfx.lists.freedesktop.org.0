Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HiBEuTh4GlhnAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 15:19:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9D840EAAC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 15:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8EEE10E892;
	Thu, 16 Apr 2026 13:19:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metarealtyinc-ca.20251104.gappssmtp.com header.i=@metarealtyinc-ca.20251104.gappssmtp.com header.b="mSOHcSs+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A63E10E737
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 19:08:31 +0000 (UTC)
Received: by mail-qt1-f175.google.com with SMTP id
 d75a77b69052e-50d9436f2adso82186051cf.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 12:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=metarealtyinc-ca.20251104.gappssmtp.com; s=20251104; t=1776280110;
 x=1776884910; darn=lists.freedesktop.org; 
 h=date:references:in-reply-to:subject:cc:to:from
 :content-transfer-encoding:mime-version:message-id:from:to:cc
 :subject:date:message-id:reply-to;
 bh=w2ZD7dT4mPOvwMbi0OBxIJnAUIwzJXsBdIr9I4x9bzE=;
 b=mSOHcSs+5qzI0iV0wY/cXYIImNMRQAE/14J5fYvcyvu1OBxFKMJyXfUWzYI95dxs/g
 PksVp79Ozhf9EFy9v35rUj1pePwpu8iyw8haPFPSN1SKOp+28l4xpTeCQuSIrgCYEEYc
 T2rlHTDV8BZI8YQAoAaWXhx2aLv+hdGYVUMFgLNbF9BPhPSJ337oWtwEmkE4tzQTKDzH
 aTb3FV4VYBIs4+BGDyrxfoArEdtRg7psk1GEHVBU7LGEfjcndouhAvNfftkhLrPpwHDc
 2irEK6KMy3nol4N+PvP6loqX792KgOvZwTW6GTVPs0BKlfn/4ALrdWwg/0vWPM+MQV2k
 P2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776280110; x=1776884910;
 h=date:references:in-reply-to:subject:cc:to:from
 :content-transfer-encoding:mime-version:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=w2ZD7dT4mPOvwMbi0OBxIJnAUIwzJXsBdIr9I4x9bzE=;
 b=HJiBaMhoC6odDdXkLqvIS/fEmi3QbFqsI5wQvnvKo0GerQz6rRFOYAzaxMFahoWjbA
 uo2b00QhfxpGaHWkN5Edd9oPqHdFxJ7A1jvllKZAfXIf9Cg8SFZlD7MY/JlS8LAb9OHD
 Yk/5SycXStVkecR28Kkj1Fk06zrbtxjC/KcumP0XZP53f9L2M4IzEEXtItbVrZC8ApVv
 jihOS/MCm8xABhn3rb1Opx4BY5hvoNmmMJlzLfkdZiWSNUVi8XeZIHRPf/iXdKBYyYnE
 2NhcyxuAHG74l9e3ARyGoiVZv0YjuiPY76THMTu3W49fwiWe1681jFeleXgz18k4BsDa
 jHow==
X-Gm-Message-State: AOJu0YzURfwzXUgeJa37BfY8kRU4WxJ8Kkn+MTuLieT7pba4CBh2eBle
 E8XAVa17B8qjoChYbgog0b+SQobeN5q3fs29IwbFFNSYNtGCxyfAnoqPZK2/elB9uhDFlnXG8uE
 jTAiFg5wzxVA3FgvfIPdYOKMIVAVzk5VEhvAF185/WS/FRz7yf6yn84H4sFZFhM8la+4yUN5Oei
 xOHNznLMpoXKNFLRn84NDH9Dghf8V4nsfI9qXldYb5K3W9ALs02mAS6S8=
X-Gm-Gg: AeBDietn/PFoKRGOyrN3pm5iBlnjxAfqKb6i2hAup+/Ux+JkQichqhYuUqU+/fQJPSf
 BCuhdTtlaXNASKTYePxQKVhZdHYTOLWOV6O6unU9AsTgxWXF6cXoT5wB6wcIv4llpIYacsPWzJ6
 e4GFG/iPNLT0flJM4d5jH8QlBK/Z1lYiYosexpo3cH00TGjh3zU8/iXYk3BvmHV3hCIwF1iMlDN
 JhrxuDeEhgo9snbWH8HPWg3Py7Vzq/iHRYmfPFf0xeKmZNtRK7xZes/+RrH7xk90r0Ne0fS8LUe
 NXK06knwhw2rMBebaLSLZKkGA84liLGHyqWQWyMaFu+k+MNGyfMAyhQnA2+8CAEetOuCFb38hBY
 xeoqvEJAH8RXY0kT48JLCKOZ3krEGU8mwQCY1FpBNkgUvoIdYDbEzZ4plN7Od6eYigGr9gqmkLx
 r1YILqqA/1VNANM2p8wn75OebSnQTfIX8sYr3I+o2Y2haX6MhpqO//nHrf0FK1NIDB5eAHgOLmO
 TPiNXxwzeaA3QWfLeoAE9MKbbLLNqEK2CVsJtUngwE=
X-Received: by 2002:a05:622a:15c5:b0:50b:48de:5448 with SMTP id
 d75a77b69052e-50dd5ad0a9amr342111341cf.6.1776280110104; 
 Wed, 15 Apr 2026 12:08:30 -0700 (PDT)
Received: from [127.0.1.1] ([2607:fea8:e5:500:8e39:827f:e928:9eb7])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-50e1faf1c34sm16720911cf.13.2026.04.15.12.08.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 12:08:29 -0700 (PDT)
Message-ID: <69dfe22d.050a0220.60470.81b5@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
From: Jake S <j@metarealtyinc.ca>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 0/2] drm: Enable eDP VRR for panels with DisplayID
 Adaptive Sync
In-Reply-To: <20260415130626.10523-1-j@metarealtyinc.ca>
References: <20260415130626.10523-1-j@metarealtyinc.ca>
Date: Wed, 15 Apr 2026 19:08:28 +0000
X-Mailman-Approved-At: Thu, 16 Apr 2026 13:19:24 +0000
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
X-Spamd-Result: default: False [0.39 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[metarealtyinc-ca.20251104.gappssmtp.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[metarealtyinc.ca : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j@metarealtyinc.ca,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[metarealtyinc-ca.20251104.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mx.google.com:mid]
X-Rspamd-Queue-Id: EE9D840EAAC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgVmlsbGUsCgo+IFdoeSBkaWQgeW91IHBvc3QgYSBkaWZmZXJlbnQgdmVyc2lvbj8KClNvcnJ5
IGZvciB0aGUgY29uZnVzaW9uIC0tIEkgd2Fzbid0IGJ1aWxkaW5nIG9uIEFkcmlhbm8gVmVybydz
Ck1hcmNoIDI4IHBhdGNoLiBJIGRpZCB0aGUgaW52ZXN0aWdhdGlvbiBpbmRlcGVuZGVudGx5IGFu
ZCBvbmx5IGZvdW5kCmhpcyB3b3JrIGFmdGVyd2FyZHMuIEkgcmVmZXJlbmNlZCBpdCBpbiB0aGUg
Y292ZXIgbGV0dGVyIGJ1dCBzaG91bGQKaGF2ZSBiZWVuIGNsZWFyZXIuCgpUaGUga2V5IGRpZmZl
cmVuY2U6IEFkcmlhbm8ncyBwYXRjaCBoYW5kbGVzIHRhZyAweDI1IChEeW5hbWljIFZpZGVvClRp
bWluZyBSYW5nZSBMaW1pdHMpLiBNeSBwYW5lbCAoTEcgRGlzcGxheSBWTkZUMiBpbiBhIERlbGwg
WFBTIDIwMjYpCm9ubHkgaGFzIHRhZyAweDJCIChBZGFwdGl2ZSBTeW5jIERhdGEgQmxvY2spLCBz
byBoaXMgcGF0Y2ggYWxvbmUKd291bGRuJ3QgaGF2ZSBoZWxwZWQgaGVyZS4gTXkgcGF0Y2ggaGFu
ZGxlcyBib3RoIDB4MkIgYW5kIDB4MjUuCgpIYXBweSB0byBjb29yZGluYXRlIHdpdGggQWRyaWFu
byBhbmQgZm9sZCB0aGUgMHgyQiBoYW5kbGluZyBpbnRvIGEKdjIgb2YgaGlzIHNlcmllcyBpZiB0
aGF0J3MgcHJlZmVycmVkLgoKVGhhbmtzLApKYWtlCg==
