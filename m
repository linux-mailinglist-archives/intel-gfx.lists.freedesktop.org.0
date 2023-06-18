Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD677348AA
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Jun 2023 23:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2F0410E013;
	Sun, 18 Jun 2023 21:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2683 seconds by postgrey-1.36 at gabe;
 Sun, 18 Jun 2023 21:40:18 UTC
Received: from mail-ue1-f06.onmail.com (mail-ue1-f06.onmail.com [3.94.226.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B557B10E013
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Jun 2023 21:40:18 +0000 (UTC)
Received: from localhost (unknown [174.120.105.80])
 by onmail.com (Postfix) with UTF8SMTP id 7CF3E260003
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Jun 2023 13:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=mail; d=onmail.com; h=mime-version:date:from:subject:to:message-id:
 cc; bh=GZh6w+L61mFGZMrr3Fa9fLKsirqC/y5XpVDW6OjBWi8=;
 b=P9fNM0339CyCiuJaLkGyQSmx+88Mj/z08819dmRoHqhfy9P3H0BHstpL3iTNm7DPfabLup
 Qi/3HC40cX+/+ObHgCzoO4aSdFJoQ62gaSCgVaTWY6pMVh9IJptMS1N2amBbD7G0QNIxhB
 2iJSVtfnmeRBMj6b6w/48u+PmOLA5aNCNiD6WWI4J+G58eqY/s+5B6WdDfGHWeGaXVNOfd
 DjQGJKPuwWWlzUyUxuwpgIiR1n5bmpIwjMcnOHRWEimQv2/6R4xa8GytiU8bNgJDOy6zt+
 W0buWVk2ZXoY48dvw8PW/MqTuQJfrYlqupZg/vFBOz3J1PDDqhz+fRH+DDtWHg==
Date: Sun, 18 Jun 2023 16:55:30 -0400
From: philly j <cyberchefed@onmail.com>
To: Intel-Gfx <intel-gfx@lists.freedesktop.org>
Message-ID: <E0D3C92E-F918-470F-9639-2A35625068F7@edison.tech>
In-Reply-To: <168692422958.9829.420842907424654976@emeril.freedesktop.org>
References: <20230616093946.68711-1-yi.l.liu@intel.com>
 <168692422958.9829.420842907424654976@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary=648f6f42_6e8b159f_1abf
X-Em-Message-ID: dzQxhr9zk/ZKA1ZMrJh4WG5UKoYQYfl6UFwbGSg69Aw=
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBnaXQgYW0JLS1hYm9y?= =?utf-8?q?t?=
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
Cc: Yi Liu <yi.l.liu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--648f6f42_6e8b159f_1abf
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

     
 

 
 
 
 
>  
>  
>  
>     "git am --abort"  
>
>  
>
>  
>
>  
> On Jun 16, 2023 at 10:03 AM,  <Patchwork (mailto:patchwork@emeril.freedesktop.org)>  wrote:
>  
>  
>  
>  == Series Details == Series: Add vfio_device cdev for iommufd support (rev17) URL : https://patchwork.freedesktop.org/series/113696/ State : failure == Summary == Error: patch https://patchwork.freedesktop.org/api/1.0/series/113696/revisions/17/mbox/ not applied Applying: vfio: Allocate per device file structure Applying: vfio: Refine vfio file kAPIs for KVM Applying: vfio: Accept vfio device file in the KVM facing kAPI Applying: kvm/vfio: Prepare for accepting vfio device fd Applying: kvm/vfio: Accept vfio device file from userspace Applying: vfio: Pass struct vfio_device_file * to vfio_device_open/close() Applying: vfio: Block device access via device fd until device is opened Applying: vfio: Add cdev_device_open_cnt to vfio_group Applying: vfio: Make vfio_df_open() single open for device cdev path Applying: vfio-iommufd: Move noiommu compat validation out of vfio_iommufd_bind() Applying: vfio-iommufd: Split bind/attach into two steps Applying: vfio: Record devid in vfio_device_
file Applying: vfio-iommufd: Add detach_ioas support for physical VFIO devices Applying: iommufd/device: Add iommufd_access_detach() API Applying: vfio-iommufd: Add detach_ioas support for emulated VFIO devices error: sha1 information is lacking or useless (drivers/vfio/iommufd.c). error: could not build fake ancestor hint: Use 'git am --show-current-patch=diff' to see the failed patch Patch failed at 0015 vfio-iommufd: Add detach_ioas support for emulated VFIO devices When you have resolved this problem, run "git am --continue". If you prefer to skip this patch, run "git am --skip" instead. To restore the original branch and stop patching, run "git am --abort". Build failed, no error log produced 
>
>  
 
 
     
--648f6f42_6e8b159f_1abf
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html><body><div id=3D"edo-message"><div></div><br></div><div id=3D"edo-ori=
ginal"><div><blockquote type=3D"cite" style=3D"margin:1ex 0 0 0; height: mi=
n-content; border-left:1px #ccc solid;padding-left:0.5ex;"><div><pre data-o=
riginal-color=3D"rgb(0, 0, 0)" style=3D"font-family: monospace; -webkit-tap=
-highlight-color: rgba(0, 0, 0, 0); font-size: 12px; caret-color: rgb(234, =
234, 234); margin-top: 1em !important; margin-bottom: 1em !important; white=
-space: pre-wrap !important; word-break: break-word !important; overflow: h=
idden !important;"><br></pre><span style=3D"caret-color: rgb(234, 234, 234)=
; font-family: monospace; font-size: 12px; white-space: pre-wrap; letter-sp=
acing: 0.1px; text-align: inherit; background-color: inherit;">"git am --ab=
ort"</span></div><div><br></div><div><br></div><div><br></div><div>On Jun 1=
6, 2023 at 10:03 AM, &lt;<a href=3D"mailto:patchwork@emeril.freedesktop.org=
">Patchwork</a>&gt; wrote:<br><br></div><div><pre>     =20
 =3D=3D Series Details =3D=3D Series: Add vfio_device cdev for iommufd supp=
ort (rev17) URL : https://patchwork.freedesktop.org/series/113696/ State : =
failure =3D=3D Summary =3D=3D Error: patch https://patchwork.freedesktop.or=
g/api/1.0/series/113696/revisions/17/mbox/ not applied Applying: vfio: Allo=
cate per device file structure Applying: vfio: Refine vfio file kAPIs for K=
VM Applying: vfio: Accept vfio device file in the KVM facing kAPI Applying:=
 kvm/vfio: Prepare for accepting vfio device fd Applying: kvm/vfio: Accept =
vfio device file from userspace Applying: vfio: Pass struct vfio_device_fil=
e * to vfio_device_open/close() Applying: vfio: Block device access via dev=
ice fd until device is opened Applying: vfio: Add cdev_device_open_cnt to v=
fio_group Applying: vfio: Make vfio_df_open() single open for device cdev p=
ath Applying: vfio-iommufd: Move noiommu compat validation out of vfio_iomm=
ufd_bind() Applying: vfio-iommufd: Split bind/attach into two steps Applyin=
g: vfio: Record devid in vfio_device_file Applying: vfio-iommufd: Add detac=
h_ioas support for physical VFIO devices Applying: iommufd/device: Add iomm=
ufd_access_detach() API Applying: vfio-iommufd: Add detach_ioas support for=
 emulated VFIO devices error: sha1 information is lacking or useless (drive=
rs/vfio/iommufd.c). error: could not build fake ancestor hint: Use 'git am =
--show-current-patch=3Ddiff' to see the failed patch Patch failed at 0015 v=
fio-iommufd: Add detach_ioas support for emulated VFIO devices When you hav=
e resolved this problem, run "git am --continue". If you prefer to skip thi=
s patch, run "git am --skip" instead. To restore the original branch and st=
op patching, run "git am --abort". Build failed, no error log produced =20
     </pre></div></blockquote></div></div></body></html>
--648f6f42_6e8b159f_1abf--
