Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 760F331575D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 21:04:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2076E0C8;
	Tue,  9 Feb 2021 20:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCD8D6E0C8
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 20:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612901071;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lJwT5cy9MQQ16bhO97V8KGmJA97taQaP5mAXCaEs+I8=;
 b=iN6/mgrWWDl6gVdU08gA57QfAvzccxyAu6auplbtCpcjru0XRB3NWnQ6CwQcJU8dgHMZM4
 6GMWN4aaRPj9uxcIhjSHnyM4p//0IUig4s/66t+YSidA/qUP8FfaZfxny/csEaLMyujx1J
 Er2L58pu7br+AhqPyLazkvSDwe5GSYg=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-3Hdph_VINBWLEuVFGscn2Q-1; Tue, 09 Feb 2021 15:04:28 -0500
X-MC-Unique: 3Hdph_VINBWLEuVFGscn2Q-1
Received: by mail-qk1-f199.google.com with SMTP id s4so16744169qkj.18
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Feb 2021 12:04:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=lJwT5cy9MQQ16bhO97V8KGmJA97taQaP5mAXCaEs+I8=;
 b=Z53onUcVMlZKtuVCl4vP2Sa8o/3bJU3s5IVOnk3Wa5fl0xnLc3VXziQpWd2iYM+j7G
 iLgt2uT9kKFct1txOIJBQHCJwtwwzj0ca9IJB1emTKWwVv7djLqQwLtNZMgwzN0oaqXA
 Bsxi3+zFhDkcO9YsiOxxcY2MbWgvqktgUiull/TYYBmP0USxCiwzDbtsF8qDWvI5BScV
 JQumQtruOssQZN401eWkkfrdoaA4PidwH3MFw8mLw29BAiMLIIf9qrea/uyS0SgLEvyi
 OgUKVmMAcAbxQ6xcGpLRNP+fds+0+gAGQNdShPom7mnBz57BMhgv/nqjC38ELVVQNhVh
 Myow==
X-Gm-Message-State: AOAM531W1gIJDJzO5X1i77VpX3Wr3jW05xPbtBCtSlAEKigl3U8CJp6E
 8cIePUyRQcYthnj3fZ4xIGFCHneRVWMRe5W43MLOGYIeZJy0bvFEDVyH85almG+IZ51yvmTT7DY
 43mPt5Qr2grsNcKkAA/S+SELAieTn
X-Received: by 2002:a37:9581:: with SMTP id
 x123mr23477064qkd.439.1612901068231; 
 Tue, 09 Feb 2021 12:04:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwzzJQXMVvzW4AZqIUPuofreox99NYGgb1l+QagsSaOdF5NzqOQwvOWu4jgw7u9wcc6aqPB9g==
X-Received: by 2002:a37:9581:: with SMTP id
 x123mr23477040qkd.439.1612901068010; 
 Tue, 09 Feb 2021 12:04:28 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id w38sm12228294qth.79.2021.02.09.12.04.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 12:04:27 -0800 (PST)
Message-ID: <028439db4dce2eb73f9d796c221b6f8923f90f5f.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: imre.deak@intel.com, "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>, Anshuman Gupta
 <anshuman.gupta@intel.com>
Date: Tue, 09 Feb 2021 15:04:26 -0500
In-Reply-To: <20210202161400.GB578899@ideak-desk.fi.intel.com>
References: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YBH0FJolpTwO+BJG@intel.com>
 <SN6PR11MB3421882AC3045B652D2CBDC4DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
 <YBjx1O/3jeFcRPDw@intel.com> <YBj7TmOwNCqwits7@intel.com>
 <SN6PR11MB3421EAB14C44008CE72F09E6DFB59@SN6PR11MB3421.namprd11.prod.outlook.com>
 <20210202161400.GB578899@ideak-desk.fi.intel.com>
Organization: Red Hat
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9bc: Handle TGP PCH during
 suspend/resume
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
Reply-To: lyude@redhat.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

..snip.. (comments down below)

On Tue, 2021-02-02 at 18:14 +0200, Imre Deak wrote:
> 
> BSpec says about this WA for both ICL and TGL:
> """
> Display driver should set and clear register offset 0xC2000 bit #7 as
> last step in programming south display registers in preparation for
> entering S0ix state, or set 0xC2000 bit #7 on S0ix entry and clear it on
> S0ix exit.
> 
> """
> 
> This means to me the WA is only relevant for S0ix and we can implement
> it by setting/clearing 0xC2000 bit #7 right before entering/right after
> exiting S0ix. This is done atm on PCH_ICP..PCH_MCC in
> intel_display_power_suspend_late()/intel_display_power_resume_early(),
> so I'd move the WA for all platforms there.
> 
> I assume the current code in irq_reset() was the first alternative to
> implement the WA, but it wasn't enough. Not sure why, maybe there is a
> south display register access after irq_reset() during suspend. Adding
> Anshuman for an idea on that.
> 

Poking Anshuman here, is there any update on this? I'm looking to push these
patches forward as some of Red Hat's hardware partners are very eager for this
to get upstream asap as we're running out of time from our end. If you can
answer this, I can handle respinning this patch as needed.

> --Imre
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 

-- 
Sincerely,
   Lyude Paul (she/her)
   Software Engineer at Red Hat
   
Note: I deal with a lot of emails and have a lot of bugs on my plate. If you've
asked me a question, are waiting for a review/merge on a patch, etc. and I
haven't responded in a while, please feel free to send me another email to check
on my status. I don't bite!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
