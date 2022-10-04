Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE585FA03C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 16:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A7E310E625;
	Mon, 10 Oct 2022 14:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 487 seconds by postgrey-1.36 at gabe;
 Tue, 04 Oct 2022 13:43:39 UTC
Received: from hx.d.sender-sib.com (hx.d.sender-sib.com [77.32.148.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C557B89C05
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 13:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mattli.us;
 q=dns/txt; s=mail; bh=Egql+V7NGYbvC+nMbLHA66jCX7EcIRuZ1pEwCRcWA/U=;
 h=from:subject:date:to:cc:mime-version:content-type:content-transfer-encoding:in-reply-to:references:list-unsubscribe:x-csa-complaints:list-unsubscribe-post;
 b=sjNWE5ICCWuqFX6wMDomL35QdnfmfNO87HY44FMk5b/zWDUfUcKrqD1gvs8Q2+E1nvJ5yAf0ixNF
 eeEL3Gar2uTzyid48QJnh2nmVWEjI1H87k/4Pox3ybOtL6TgDFXmr6zgNTpx/lzx9co0GV6hkDAA
 s/e9q5Pql72FYVENa2o=
X-Mailin-EID: MTg1NzY5OTU4fmludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmd%2BPDg3djhvenlmcDkuZnNmQG1hdHRsaS51cz5%2BaGIuZC5zZW5kZXItc2liLmNvbQ%3D%3D
To: "Thorsten Leemhuis" <regressions@leemhuis.info>
Date: Tue, 04 Oct 2022 06:46:10 -0500
Message-Id: <3929edd9-891d-4e54-8443-d854bc1461cc@smtp-relay.sendinblue.com>
Origin-messageId: <87v8ozyfp9.fsf@mattli.us>
Received: from [2604:2d80:5f83:4200:89b4:795f:d2c4:903e] (port=54094
 helo=framey) by email-vm.mattli.us with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <dmm@mattli.us>) id 1ofgNQ-0000KC-Ch; Tue, 04 Oct 2022 06:46:21 -0500
References: <55905860-adf9-312c-69cc-491ac8ce1a8b@cern.ch>
 <YzZynE2FAMNQKm2E@kroah.com> <YzaFq7fzw5TbrJyv@kroah.com>
 <03147889-B21C-449B-B110-7E504C8B0EF4@sladewatkins.net>
 <aa8b9724-50c6-ae2e-062d-3791144ac97e@cern.ch>
 <e3e2915d-1411-a758-3991-48d6c2688a1e@leemhuis.info>
 <YzsfrkJcwqKOO+E/@intel.com> <YzsgeXOK6JeVQGHF@intel.com>
 <714903fa-16c8-4247-d69d-74af6ef50bfa@leemhuis.info>
In-Reply-To: <714903fa-16c8-4247-d69d-74af6ef50bfa@leemhuis.info> (Thorsten
 Leemhuis's message of "Mon, 3 Oct 2022 20:28:50 +0200")
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-SA-Exim-Connect-IP: 2604:2d80:5f83:4200:89b4:795f:d2c4:903e
X-SA-Exim-Mail-From: dmm@mattli.us
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on email-vm.mattli.us
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=ALL_TRUSTED, PDS_OTHER_BAD_TLD,
 URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-SA-Exim-Version: 4.2.1 (built Sat, 13 Feb 2021 17:57:42 +0000)
X-SA-Exim-Scanned: Yes (on email-vm.mattli.us)
X-sib-id: KRzC0uVSLz-bc5domxEa2qikTApxX1ZGTYtgR4ESFOqqe_922KBxXuQ7iKaVq4vPOmPih5mfChdnKmfa8Ue14ZQo4auCO-Ehntgh5SIxZksgXR6zZqM_Er0ovLArccEONtfa-MuFeR_c0lxoAjCbd3QoXQb8oHKNYfZlMYRhyS0Ihy7VgWHsMg9khROG
X-CSA-Complaints: whitelist-complaints@eco.de
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Feedback-ID: 77.32.148.28:5226991_-1:5226991:Sendinblue
From: "David Matthew Mattli" <dmm@mattli.us>
X-Mailman-Approved-At: Mon, 10 Oct 2022 14:31:03 +0000
Subject: Re: [Intel-gfx] Regression on 5.19.12,
 display flickering on Framework laptop
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
Cc: regressions@lists.linux.dev,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, Slade Watkins <srw@sladewatkins.net>,
 stable@vger.kernel.org, Jerry Ling <jiling@cern.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thorsten Leemhuis <regressions@leemhuis.info> writes:<br/><br/>> On 03.10.=
22 19:48, Ville Syrj=C3=A4l=C3=A4 wrote:<br/>>> On Mon, Oct 03, 2022 at =
08:45:18PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:<br/>>>> On Sat, Oct 01, =
2022 at 12:07:39PM +0200, Thorsten Leemhuis wrote:<br/>>>>> On 30.09.22 =
14:26, Jerry Ling wrote:<br/>>>>>><br/>>>>>> looks like someone has done =
it:<br/>>>>>> https://bbs.archlinux.org/viewtopic.php=3Fpid=3D2059823#p2059=
823<br/>>>>>><br/>>>>>> and the bisect points to:<br/>>>>>><br/>>>>>> |# =
first bad commit: [fc6aff984b1c63d6b9e54f5eff9cc5ac5840bc8c]<br/>>>>>> =
drm/i915/bios: Split VBT data into per-panel vs. global parts Best, Jerry =
|<br/>>>>><br/>>>>> FWIW, that's 3cf050762534 in mainline. Adding Ville, =
its author to the<br/>>>>> list of recipients.<br/>>>><br/>>>> I definitely=
 had no plans to backport any of that stuff,<br/>>>> but I guess the =
automagics did it anyway.<br/>>>><br/>>>> Looks like stable is at least =
missing this pile of stuff:<br/>>>> 50759c13735d drm/i915/pps: Keep VDD =
enabled during eDP probe<br/>>>> 67090801489d drm/i915/pps: Reinit PPS =
delays after VBT has been fully parsed<br/>>>> 8e75e8f573e1 drm/i915/pps: =
Split PPS init+sanitize in two<br/>>>> 586294c3c186 drm/i915/pps: Stash =
away original BIOS programmed PPS delays<br/>>>> 89fcdf430599 drm/i915/pps:=
 Don't apply quirks/etc. to the VBT PPS<br/>>>> delays if they haven't been=
 initialized<br/>>>> 60b02a09598f drm/i915/pps: Introduce =
pps=5Fdelays=5Fvalid()<br/>>>><br/>>>> But dunno if even that is enough.=
<br/>><br/>> If you need testers: David (now CCed) apparently has a =
affected machine<br/>> and offered to test patches in a different subthread=
 of this thread.<br/>><br/><br/>I cherry-picked the six commits Thorsten =
listed onto 5.19.12 and it<br/>resolved the issue on my Framework laptop.=
<br/><br/>>>> This bug report is probably the same thing:<br/>>>> =
https://gitlab.freedesktop.org/drm/intel/-/issues/7013<br/>><br/>> Sounds =
like it.<br/>><br/>>  > Also cc intel-gfx...<br/>><br/>> Ahh, sorry, should=
 have done that when I CCed you.<br/>><br/>> Ciao, Thorsten<br/>><br/>><br/=
>>>>> Did anyone check if a revert on top of 5.19.12 works easily and =
solves<br/>>>>> the problem=3F<br/>>>>><br/>>>>> And does anybody known if =
mainline affected, too=3F<br/>>>>><br/><br/>I tested 6.0 and it works fine.=
 Let me know if I can test anything else.<br/><br/>Thanks,<br/><br/>David =
Mattli<br/><br/>>>>> Ciao, Thorsten<br/>>>>><br/>>>>><br/>>>>>> On 9/30/22 =
07:11, Slade Watkins wrote:<br/>>>>>>> Hey Greg,<br/>>>>>>><br/>>>>>>>> On =
Sep 30, 2022, at 1:59 AM, Greg KH <gregkh@linuxfoundation.org> =
wrote:<br/>>>>>>>><br/>>>>>>>> On Fri, Sep 30, 2022 at 06:37:48AM +0200, =
Greg KH wrote:<br/>>>>>>>>> On Thu, Sep 29, 2022 at 10:26:25PM -0400, Jerry=
 Ling wrote:<br/>>>>>>>>>> Hi,<br/>>>>>>>>>><br/>>>>>>>>>> It has been =
reported by multiple users across a handful of distros<br/>>>>>>>>>> =
that<br/>>>>>>>>>> there seems to be regression on Framework laptop (which =
presumably<br/>>>>>>>>>> is not<br/>>>>>>>>>> that special in terms of mobo=
 and display)<br/>>>>>>>>>><br/>>>>>>>>>> Ref:<br/>>>>>>>>>> =
https://community.frame.work/t/psa-dont-upgrade-to-linux-kernel-5-19-12-arc=
h1-1-on-arch-linux-gen-11-model/23171<br/>>>>>>>>> Can anyone do a 'git =
bisect' to find the offending commit=3F<br/>>>>>>>> Also, this works for me=
 on a gen 12 framework laptop:<br/>>>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0$ uname =
-a<br/>>>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0Linux frame 5.19.12 #68 SMP =
PREEMPT=5FDYNAMIC Fri Sep 30 07:02:33<br/>>>>>>>> CEST 2022 x86=5F64 =
GNU/Linux<br/>>>>>>>><br/>>>>>>>> so there's something odd with the older =
hardware=3F<br/>>>>>>>><br/>>>>>>>> greg k-h<br/>>>>>>> Could be. Running =
git bisect for 5.19.11 and 5.19.12 (as suggested by<br/>>>>>>> the linked =
forum thread) returned nothing on gen 11 for me.<br/>>>>>>><br/>>>>>>> This=
 is very odd,<br/>>>>>>> -srw<br/>>>>>><br/>>>>>><br/>>>><br/>>>> -- =
<br/>>>> Ville Syrj=C3=A4l=C3=A4<br/>>>> Intel<br/>>> <br/><div><img =
width=3D=221=22 height=3D=221=22 src=3D=22https://fccgjjb.r.bh.d.sendibt3.=
com/tr/op/LtTLrxxvY0WwQ55tjBUeIwzYxJlsUCq5dsZMHnhUu=5F1kBqnyYQmFlfF13oiby1Q=
Y-ySxoh6aI19Z1kGTY-gHz=5FsjGWTjyjR3jtJyu7hsd1Y4NcfSJBPEImq7RUnkWXZgFz0SBaqV=
IGhsbqvuGNZ-L-NZUAG=5FriYj5rNUhtwXse7Y=22 alt=3D=22=22 =
/></div>
