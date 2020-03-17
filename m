Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB930188DA4
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 20:07:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFDDB6E037;
	Tue, 17 Mar 2020 19:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C4586E037
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 19:07:02 +0000 (UTC)
IronPort-SDR: lCkhGVYPHqE1UtIVObptHWlAVxVUnGY3KpRdS/ox/Ql/2dI70eMK6IIdPgTnZpcaXDDZEBNS/h
 Amk+2GswoYYg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 12:07:01 -0700
IronPort-SDR: yUefBVkKaLUcEcnI7tDvPyrp3OsJEYJe15t+GSP5jAXwIMa+tqAKGkbfpHjDgqLJwGS+VTw1ud
 yqB7oMS2G6uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,565,1574150400"; d="scan'208";a="291080913"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Mar 2020 12:07:01 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 17 Mar 2020 12:07:00 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.114]) with mapi id 14.03.0439.000;
 Tue, 17 Mar 2020 12:07:00 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "dh@xmx.ch" <dh@xmx.ch>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] Screen Flickering on DELL XPS-13-7390
Thread-Index: AQHV/I3ikjgm9sz/fEGgqCshU9RIMKhNmwyA
Date: Tue, 17 Mar 2020 19:07:00 +0000
Message-ID: <0d5b948a015ca05afca3ddf55c06403a6af9345c.camel@intel.com>
References: <jdqEyaiHhDwm6lTXjzrj7NoxQwpsPsv79qmpRk9TPXsLQ4atLkaKDAbTVJ6GuKzG03mYIMimWqQGCNNHCpTwfeRXt5XzfiZHXRwY1m5Hlko=@xmx.ch>
In-Reply-To: <jdqEyaiHhDwm6lTXjzrj7NoxQwpsPsv79qmpRk9TPXsLQ4atLkaKDAbTVJ6GuKzG03mYIMimWqQGCNNHCpTwfeRXt5XzfiZHXRwY1m5Hlko=@xmx.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <95C2D1F6A050B541A612BA325B2C8062@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] Screen Flickering on DELL XPS-13-7390
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi

Please test with drm-tip and file a bug attaching more information
and logs: 
https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs

On Tue, 2020-03-17 at 18:56 +0000, Damian Hischier wrote:
> Hello
> 
> I installed opensuse Tumbleweed linux on a brand new Dell XPS-13-
> 7390. Already during the installation, the screen started to flicker.
> Then I installed opensuse 15.1 on the same laptop and it worked
> without screen flickering. But after I run the online update it
> started to flicker again. I suspect that there are some changes in
> the newer kernel versions. Does anybody know why it does work with
> kernel 4.12.14-lp151.27-default and it doesn't work with a newer
> kernel. I opened a thread in the opensuse forum:
> 
> https://forums.opensuse.org/showthread.php/539492-Screen-flickering-on-DELL-XPS-13-7390?p=2929887#post2929887
> 
> There you can see the outputs of inxi. Somebody recommended to ask
> here for advice. Is there anything I can do to get rid of this screen
> flickering?
> 
> Thank you very much for your help
> 
> Sent from ProtonMail, Swiss-based encrypted email.
> 
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
