Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9407F177E44
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 19:10:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB0F56E935;
	Tue,  3 Mar 2020 18:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from amazon.4net.rs (amazon.4net.rs [159.69.148.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7B06E436
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 07:08:14 +0000 (UTC)
Received: from localhost (amazon.4net.co.rs [127.0.0.1])
 by amazon.4net.rs (Postfix) with ESMTP id A90556308DA5;
 Tue,  3 Mar 2020 08:08:10 +0100 (CET)
X-Virus-Scanned: amavisd-new at 4net.rs
Received: from amazon.4net.rs ([127.0.0.1])
 by localhost (amazon.dyn.4net.co.rs [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jvoIUfjkylYN; Tue,  3 Mar 2020 08:08:09 +0100 (CET)
Received: from mail.4net.rs (green.4net.rs [10.188.221.8])
 by amazon.4net.rs (Postfix) with ESMTP id CBDBA6308DA3;
 Tue,  3 Mar 2020 08:08:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by mail.4net.rs (Postfix) with ESMTP id 8CB8BCB7B785E;
 Tue,  3 Mar 2020 08:08:09 +0100 (CET)
X-Virus-Scanned: amavisd-new at 4net.rs
Received: from mail.4net.rs ([127.0.0.1])
 by localhost (green.4net.rs [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mWQk5sHWq3_6; Tue,  3 Mar 2020 08:08:09 +0100 (CET)
Received: from mail.4net.rs (localhost [127.0.0.1])
 by mail.4net.rs (Postfix) with ESMTP id 65106C9AA7822;
 Tue,  3 Mar 2020 08:08:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=4net.rs; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; s=4netrs; bh=EX/iTcpszK
 0Ez1dpjbfxtmz1eo8=; b=q+6FUDISiI0OHo4p53AHwm1ti3Qgt0JhCnRjttNOcQ
 GBpcGVF3KW4aJQz9VgHUYPd5wwY15Zm+muk3iA3hpx+XZPBZQaXOEtd0jAjbrnJG
 4JjxDinO1YXI43gueHX3g0uZD/ynXf0lH1+g3v6NzNqE2zq2aWXgLWBa/RTvapuZ
 0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=4net.rs; h=subject:to:cc
 :references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; q=dns; s=4netrs; b=nxho
 JU6k4O6gJ+tZESC/S8BWSTcZczEEpVuvGaq4+dZ531AWrYF5XI11aIkufIs9VvTv
 kF9RRNepdqUA2YDHAsR3Ds50TJ6/JoFufMvReLbb4Lf4A2YODoqntbdh0ReHT3ND
 0rTaqE2jCSuR3AxQm46K9o9KGVZEAKcE+tTl4kY=
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by mail.4net.rs (Postfix) with ESMTPSA id 3953ECB7B785E;
 Tue,  3 Mar 2020 08:08:09 +0100 (CET)
To: linux-kernel@vger.kernel.org
References: <CAHk-=wgqwiBLGvwTqU2kJEPNmafPpPe_K0XgBU-A58M+mkwpgQ@mail.gmail.com>
 <99fb887f-4a1b-6c15-64a6-9d089773cdd4@4net.rs>
 <CAPM=9ty3NuSHBd+StNGxVCE9jkmppQ_VTr+jMRgB07qW3dRwrA@mail.gmail.com>
 <f9081410ef1135003720fa29d27aa10b9d12d509.camel@intel.com>
 <a1c918b663805e8213a1229edb87883c@4net.rs> <87sgiqpu1s.fsf@intel.com>
From: Sinisa <sinisa@4net.rs>
Message-ID: <5d9ef6ef-7bde-172f-f35d-14e1cc98c0b4@4net.rs>
Date: Tue, 3 Mar 2020 08:08:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <87sgiqpu1s.fsf@intel.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 03 Mar 2020 18:10:33 +0000
Subject: Re: [Intel-gfx] Linux 5.6-rc2
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMy8yLzIwIDY6MDQgUE0sIEphbmkgTmlrdWxhIHdyb3RlOgo+IE9uIE1vbiwgMDIgTWFyIDIw
MjAsIFNpbmnFoWEgQmFuZGluIDxzaW5pc2FANG5ldC5ycz4gd3JvdGU6Cj4+IFNvcnJ5IHRvIGJv
dGhlciwgYnV0IHN0aWxsIGEgIm5vIGdvIiBpbiByYzQgKGF0IHRoZSBzYW1lIHRpbWUsIDUuNS43
Cj4+IHdvcmtzIE9LKS4KPj4KPj4gSXMgdGhlcmUgYW55dGhpbmcgZWxzZSBJIGNvdWxkIGRvIHRv
IGhlbHAgZml4IHRoaXM/Cj4gUGxlYXNlIHdhaXQgZm9yIHRoZSBwYXRjaCB0byBiZSBhY3R1YWxs
eSBtZXJnZWQgdG8gTGludXMnIHRyZWUuIEkgYXNzdW1lCj4gaXQnbGwgbWFrZSBpdCB0byB2NS42
LXJjNS4KPgo+IFRoYW5rcywKPiBKYW5pLgpPSywgdGhhbmsgeW91LgoKSSdsbCB3YWl0IHBhdGll
bnRseS4uLgoKU3JkYcSNYW4gcG96ZHJhdiAvIEJlc3QgcmVnYXJkcyAvIEZyZXVuZGxpY2hlIEdy
w7zDn2UgLyBDb3JkaWFsZW1lbnQsClNpbmnFoWEgQmFuZGluCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
