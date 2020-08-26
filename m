Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CE3253965
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 22:53:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9358F6EADB;
	Wed, 26 Aug 2020 20:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 121266EADB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 20:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=skogtun.org
 ; s=ds201912;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:
 References:Cc:To:Subject:Sender:Reply-To:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=JICICfSzhFTN9gnTi1KJ0e+tPTQlVk7Qx43lqZ7fPPY=; b=ljVfY4REyCnSUkas2cf0fF/1l1
 fYVsX7HEKI4U6cx1WnLnb9b5NiXJB4Dvcn/lZnoaesZWM6FrIb2KU/cQIWe7cWIHeRoIu0AdH7w+w
 xIQGrL838UWXYl9cJ26/vy5lYzRxZWJBTOII+29W3Le1joTjVBsieEUTyYpHtdwpEn1FeDpORIxG5
 L/W7T9kDfh1zWp0E2oP7TxiHXUWFiXNeb7/C1Iw2WtSwTNsieN+g4Zmy9X1Jm/6bENTm2tSoiD8I8
 G/uI5vDcc7krxYJ2naSBbfFHriQmg0vb25fHeaEINh6z2yfbPkuCekJK7PJPNPAHor9emtPPh2MAL
 xbnqK6Dw==;
Received: from [2a01:79c:cebf:7fb0:de97:df61:fecc:46bb] (port=56316)
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <harald@skogtun.org>)
 id 1kB2QE-0001MU-AL; Wed, 26 Aug 2020 22:53:30 +0200
To: Dave Airlie <airlied@gmail.com>
References: <20200817161132.GA4711@amd>
 <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
 <CAPM=9tw8LVWsuA6m_nkUDgm00iz2txYRNZY0b0WWZbyiUVzLEw@mail.gmail.com>
 <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
 <20200820092349.GA3792@amd>
 <CAHk-=wjX=ck_u8uvp=PjGCQ3M9igE-yqyRPsJ54th1gQWpwMnA@mail.gmail.com>
 <20200821091900.hzbivycs5ky5d3iw@duo.ucw.cz> <87tuwr59te.fsf@intel.com>
 <7efa547d-b7a4-b873-f1aa-4f19eb849fa3@skogtun.org>
 <CAHk-=wj3WskPCtHncCWLdaP6xVecLp8bDBTT57vyiU-0=Ld6QQ@mail.gmail.com>
 <d4db4a52-3001-cb02-4888-a9dfd55cdd7c@skogtun.org>
 <656b8f9f-d696-c75d-aef6-2b8b5170f2f6@skogtun.org>
 <CAHk-=wiAK=AiqTD47o-BFFZciQXpEC0SiiDnXLWJUcQtCo-Pig@mail.gmail.com>
 <101bff45-0ebd-8fb6-7c99-963aa4fcc588@skogtun.org>
 <CAPM=9twLvHu_XLJ89GVXpNo=PHPZLJuRpHggkfzvvuVf+xrwoA@mail.gmail.com>
From: Harald Arnesen <harald@skogtun.org>
Message-ID: <0f06d704-c14e-0d86-c8bb-8c7b3a34758a@skogtun.org>
Date: Wed, 26 Aug 2020 22:53:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAPM=9twLvHu_XLJ89GVXpNo=PHPZLJuRpHggkfzvvuVf+xrwoA@mail.gmail.com>
Content-Type: multipart/mixed; boundary="------------7C9CE45B82D9C27910FABF78"
Content-Language: en-US
Subject: Re: [Intel-gfx] 5.9-rc1: graphics regression moved from -next to
 mainline
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>,
 Pavel Machek <pavel@ucw.cz>, Linus Torvalds <torvalds@linux-foundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------7C9CE45B82D9C27910FABF78
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Dave Airlie [26.08.2020 22:47]:

> On Thu, 27 Aug 2020 at 06:44, Harald Arnesen <harald@skogtun.org> wrote:
>>
>> Linus Torvalds [26.08.2020 20:04]:
>>
>> > On Wed, Aug 26, 2020 at 2:30 AM Harald Arnesen <harald@skogtun.org> wrote:
>> >> Somehow related to lightdm or xfce4? However, it is a regression, since
>> >> kernel 5.8 works.
>> > Yeah, apparently there's something else wrong with the relocation changes too.
>> >
>> > That said, does that patch at
>> >
>> >   https://lore.kernel.org/intel-gfx/20200821123746.16904-1-joro@8bytes.org/
>> >
>> > change things at all? If there are two independent bugs, maybe
>> > applying that patch might at least give you an oops that gets saved in
>> > the logs?
>> >
>> > (it might be worth waiting a bit after the machine locks up in case
>> > the machine is alive enough so sync logs after a bit.. If ssh works,
>> > that's obviously better yet)
>>
>> No, doesn't help. And I was wrong, ssh does not work at all when the
>> display locks up.
> 
> Did you say what hw you had? is it the same hw as Pavel or different?
> 
> Dave.
> 

It's a Thinkpad T520.
Output from 'lspci' attached.

-- 
Hilsen Harald

--------------7C9CE45B82D9C27910FABF78
Content-Type: text/plain; charset=UTF-8;
 name="hw.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="hw.txt"

MDA6MDAuMCBIb3N0IGJyaWRnZTogSW50ZWwgQ29ycG9yYXRpb24gMm5kIEdlbmVyYXRpb24g
Q29yZSBQcm9jZXNzb3IgRmFtaWx5IERSQU0gQ29udHJvbGxlciAocmV2IDA5KQowMDowMi4w
IFZHQSBjb21wYXRpYmxlIGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9uIDJuZCBHZW5l
cmF0aW9uIENvcmUgUHJvY2Vzc29yIEZhbWlseSBJbnRlZ3JhdGVkIEdyYXBoaWNzIENvbnRy
b2xsZXIgKHJldiAwOSkKMDA6MTYuMCBDb21tdW5pY2F0aW9uIGNvbnRyb2xsZXI6IEludGVs
IENvcnBvcmF0aW9uIDYgU2VyaWVzL0MyMDAgU2VyaWVzIENoaXBzZXQgRmFtaWx5IE1FSSBD
b250cm9sbGVyICMxIChyZXYgMDQpCjAwOjE5LjAgRXRoZXJuZXQgY29udHJvbGxlcjogSW50
ZWwgQ29ycG9yYXRpb24gODI1NzlMTSBHaWdhYml0IE5ldHdvcmsgQ29ubmVjdGlvbiAoTGV3
aXN2aWxsZSkgKHJldiAwNCkKMDA6MWEuMCBVU0IgY29udHJvbGxlcjogSW50ZWwgQ29ycG9y
YXRpb24gNiBTZXJpZXMvQzIwMCBTZXJpZXMgQ2hpcHNldCBGYW1pbHkgVVNCIEVuaGFuY2Vk
IEhvc3QgQ29udHJvbGxlciAjMiAocmV2IDA0KQowMDoxYi4wIEF1ZGlvIGRldmljZTogSW50
ZWwgQ29ycG9yYXRpb24gNiBTZXJpZXMvQzIwMCBTZXJpZXMgQ2hpcHNldCBGYW1pbHkgSGln
aCBEZWZpbml0aW9uIEF1ZGlvIENvbnRyb2xsZXIgKHJldiAwNCkKMDA6MWMuMCBQQ0kgYnJp
ZGdlOiBJbnRlbCBDb3Jwb3JhdGlvbiA2IFNlcmllcy9DMjAwIFNlcmllcyBDaGlwc2V0IEZh
bWlseSBQQ0kgRXhwcmVzcyBSb290IFBvcnQgMSAocmV2IGI0KQowMDoxYy4xIFBDSSBicmlk
Z2U6IEludGVsIENvcnBvcmF0aW9uIDYgU2VyaWVzL0MyMDAgU2VyaWVzIENoaXBzZXQgRmFt
aWx5IFBDSSBFeHByZXNzIFJvb3QgUG9ydCAyIChyZXYgYjQpCjAwOjFjLjMgUENJIGJyaWRn
ZTogSW50ZWwgQ29ycG9yYXRpb24gNiBTZXJpZXMvQzIwMCBTZXJpZXMgQ2hpcHNldCBGYW1p
bHkgUENJIEV4cHJlc3MgUm9vdCBQb3J0IDQgKHJldiBiNCkKMDA6MWMuNCBQQ0kgYnJpZGdl
OiBJbnRlbCBDb3Jwb3JhdGlvbiA2IFNlcmllcy9DMjAwIFNlcmllcyBDaGlwc2V0IEZhbWls
eSBQQ0kgRXhwcmVzcyBSb290IFBvcnQgNSAocmV2IGI0KQowMDoxZC4wIFVTQiBjb250cm9s
bGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiA2IFNlcmllcy9DMjAwIFNlcmllcyBDaGlwc2V0IEZh
bWlseSBVU0IgRW5oYW5jZWQgSG9zdCBDb250cm9sbGVyICMxIChyZXYgMDQpCjAwOjFmLjAg
SVNBIGJyaWRnZTogSW50ZWwgQ29ycG9yYXRpb24gUU02NyBFeHByZXNzIENoaXBzZXQgTFBD
IENvbnRyb2xsZXIgKHJldiAwNCkKMDA6MWYuMiBTQVRBIGNvbnRyb2xsZXI6IEludGVsIENv
cnBvcmF0aW9uIDYgU2VyaWVzL0MyMDAgU2VyaWVzIENoaXBzZXQgRmFtaWx5IDYgcG9ydCBN
b2JpbGUgU0FUQSBBSENJIENvbnRyb2xsZXIgKHJldiAwNCkKMDA6MWYuMyBTTUJ1czogSW50
ZWwgQ29ycG9yYXRpb24gNiBTZXJpZXMvQzIwMCBTZXJpZXMgQ2hpcHNldCBGYW1pbHkgU01C
dXMgQ29udHJvbGxlciAocmV2IDA0KQowMzowMC4wIE5ldHdvcmsgY29udHJvbGxlcjogSW50
ZWwgQ29ycG9yYXRpb24gQ2VudHJpbm8gVWx0aW1hdGUtTiA2MzAwIChyZXYgMzUpCjBkOjAw
LjAgU3lzdGVtIHBlcmlwaGVyYWw6IFJpY29oIENvIEx0ZCBQQ0llIFNEWEMvTU1DIEhvc3Qg
Q29udHJvbGxlciAocmV2IDA4KQowZDowMC4zIEZpcmVXaXJlIChJRUVFIDEzOTQpOiBSaWNv
aCBDbyBMdGQgUjVDODMyIFBDSWUgSUVFRSAxMzk0IENvbnRyb2xsZXIgKHJldiAwNCkK
--------------7C9CE45B82D9C27910FABF78
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--------------7C9CE45B82D9C27910FABF78--
