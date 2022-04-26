Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C6A5101E6
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 17:29:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6FE310E612;
	Tue, 26 Apr 2022 15:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8DC810E612
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 15:29:29 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id q12so16330016pgj.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 08:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fireburn-co-uk.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lZlT5pXPhHWSQcE2RTzBIz/G9KbrNns2EdBS7uY3x2A=;
 b=A0wOIbREZiPNRR1QF0NoGkT8Pnea9QnGqzGpH7RIUvzWOmDWmYwlkJKTI1rYUxe2ql
 lZD0v80/AgREwqwHoiSEd253EOQEtDoScWZ64Xaw4RffpeHpTAVYLTKkTeKp/c2artXO
 sPUmXYYnIozzL2qkIO51PtOf1hj0ORfI92gpl0YPzSatmZd91Foq403vBAh288rE0TSp
 jg5UyOzadMJXLUkBEFqOp4kH+RUweDN5DcNwel6bbmsZiseFz2aEnMYrLC6DEhWXFL34
 9soNzY/U7RhrjCk0SaNDJ/gWKsROUfivZMgxNTlj/XISyzKDIDfXQ/pa/ljWTXHdfGTY
 f6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lZlT5pXPhHWSQcE2RTzBIz/G9KbrNns2EdBS7uY3x2A=;
 b=eI/HuMdYGAGIrpwAEU7CAPDR8elmKEwq+t90+3fLoX9w9FUAkGqKlNOjnEmxyDwNxq
 HvhqeUau8W1keEnxtnfzF5hBS1r8kjVgqnHN8+w8o24i26Yewwm+qsuVi+bojQT+fLTV
 KOfwPW4uCzvvvgnxzOjuXAX8lB7LMTEiGv1LbGZ9EupWmqtu1f0JEekK+g5pMyHjSkjg
 WG4RXdOTnQkK2IG7OdCeQoh/Y+RnvivvBx4GUKkgtwjIoTWU8ikkTVu/H5CLbA0b6vrf
 HiXB/bORDPEg7BiSt8qux4H9VuOftnhKiHp+DjrkZW6ns7njuG3/oBrNS8J+eNHF2RJG
 m8Tg==
X-Gm-Message-State: AOAM532P12WS7npTLpDFS/fozPRFbVQscPY8EFQU0p91d3w5C9nmaciq
 /O4vv0DRM6LwK70qTpfZI3cn1yo8gwlVZSIpB7Y+Fw==
X-Google-Smtp-Source: ABdhPJwqACommhKnL7qSrJ6YAagLB0IEz2Ib+KMdLue5Akk8HtOkmOAXaz5YrH/P8tuhLsjVBcrMI1BMHIjw4rYj+eU=
X-Received: by 2002:a63:7d04:0:b0:378:fb34:5162 with SMTP id
 y4-20020a637d04000000b00378fb345162mr19713715pgc.487.1650986969341; Tue, 26
 Apr 2022 08:29:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220407054651.3924-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220407054651.3924-1-Arunpravin.PaneerSelvam@amd.com>
From: Mike Lothian <mike@fireburn.co.uk>
Date: Tue, 26 Apr 2022 16:29:17 +0100
Message-ID: <CAHbf0-H5uE4RtZwY0L8Wz0VG6QnU1+E3yhg3fDFVc3n__=nrNQ@mail.gmail.com>
To: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v12] drm/amdgpu: add drm buddy support to
 amdgpu
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 alexander.deucher@amd.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi

I'm having issues with this patch on my PRIME system and vulkan workloads

https://gitlab.freedesktop.org/drm/amd/-/issues/1992

Is there any chance you could take a look?

Cheers

Mike
