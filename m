Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4580D6643BD
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 15:55:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AE4910E5D6;
	Tue, 10 Jan 2023 14:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFB3510E5D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 14:55:02 +0000 (UTC)
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 30AEH2WQ032630; Tue, 10 Jan 2023 14:54:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=8rRpFagcUrDG39oi0NySaX6L60RGxoRtvw3fFkRTIHs=;
 b=SKvVC3Q2RczX2zZJHsY1+x6zrtAArGMYxzHlUHGE+WwEGwoAgwCIS9/jYuALLkZu3uZo
 haZ7BUdFlWrVBhbl+Ti7NzOzyJvL6NnzHa3zATJer1PsZqfuaqbr6GgbYfXpyN89K0Dv
 SavB0CIy3XXdwph06W/5LY7YQgaczqkSMA39Md6XqKJJezdjAtAAUqTbBSfKxxn5Ri/b
 GDO7EiJzJSJEmjSeSmxH8veVbkCqoy2pDUx2hLunXKEHKsYXQkx19WQbpttEeDp5AIW2
 7NkGUCYh9O/dqQxouVjr2CJL9ljpyfryS9ok9cW0Bzn+36zdad3a9SQub0oEGXPOwlE/ rg== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3n19n2s43w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 10 Jan 2023 14:54:56 +0000
Received: from m0127361.ppops.net (m0127361.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 30AEH4fL032719;
 Tue, 10 Jan 2023 14:54:56 GMT
Received: from ppma03wdc.us.ibm.com (ba.79.3fa9.ip4.static.sl-reverse.com
 [169.63.121.186])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3n19n2s43q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 10 Jan 2023 14:54:55 +0000
Received: from pps.filterd (ppma03wdc.us.ibm.com [127.0.0.1])
 by ppma03wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 30ABv0g5010169;
 Tue, 10 Jan 2023 14:54:55 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([9.208.129.118])
 by ppma03wdc.us.ibm.com (PPS) with ESMTPS id 3my0c7a9vv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 10 Jan 2023 14:54:55 +0000
Received: from smtpav04.wdc07v.mail.ibm.com (smtpav04.wdc07v.mail.ibm.com
 [10.39.53.231])
 by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 30AEsrMi56099234
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Jan 2023 14:54:53 GMT
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B500658045;
 Tue, 10 Jan 2023 14:54:53 +0000 (GMT)
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 86C4B58052;
 Tue, 10 Jan 2023 14:54:52 +0000 (GMT)
Received: from [9.160.171.221] (unknown [9.160.171.221])
 by smtpav04.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 10 Jan 2023 14:54:52 +0000 (GMT)
Message-ID: <b317380e-26bf-b478-4aea-0355e0de4017@linux.ibm.com>
Date: Tue, 10 Jan 2023 09:54:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
References: <20230110091009.474427-1-hch@lst.de>
 <20230110091009.474427-2-hch@lst.de>
From: Anthony Krowiak <akrowiak@linux.ibm.com>
In-Reply-To: <20230110091009.474427-2-hch@lst.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: eM4ZKbFUWuZCkdT4oZussBlXFXvLydrI
X-Proofpoint-GUID: 3LZ2Q-1FvI8p116IQXqMi2vlHuWNvdf-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2023-01-10_04,2023-01-10_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 impostorscore=0 suspectscore=0 bulkscore=0 mlxscore=0 spamscore=0
 malwarescore=0 adultscore=0 phishscore=0 clxscore=1015 mlxlogscore=999
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301100088
Subject: Re: [Intel-gfx] [PATCH 1/4] vfio-mdev: allow building the samples
 into the kernel
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
Cc: Jason Herne <jjherne@linux.ibm.com>, linux-s390@vger.kernel.org,
 kvm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Halil Pasic <pasic@linux.ibm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/10/23 4:10 AM, Christoph Hellwig wrote:
> There is nothing in the vfio-mdev sample drivers that requires building
> them as modules, so remove that restriction.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   samples/Kconfig | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/samples/Kconfig b/samples/Kconfig
> index 0d81c00289ee36..f1b8d4ff123036 100644
> --- a/samples/Kconfig
> +++ b/samples/Kconfig
> @@ -184,23 +184,23 @@ config SAMPLE_UHID
>   	  Build UHID sample program.
>   
>   config SAMPLE_VFIO_MDEV_MTTY
> -	tristate "Build VFIO mtty example mediated device sample code -- loadable modules only"
> -	depends on VFIO_MDEV && m
> +	tristate "Build VFIO mtty example mediated device sample code"
> +	depends on VFIO_MDEV


Admittedly, I'm not very fluent with Kconfig, but in patch 2 you stated, 
"VFIO_MDEV is just a library with helpers for the drivers. Stop making 
it a user choice and just select it by the drivers that use the 
helpers". Why are you not selecting it here?


>   	help
>   	  Build a virtual tty sample driver for use as a VFIO
>   	  mediated device
>   
>   config SAMPLE_VFIO_MDEV_MDPY
> -	tristate "Build VFIO mdpy example mediated device sample code -- loadable modules only"
> -	depends on VFIO_MDEV && m
> +	tristate "Build VFIO mdpy example mediated device sample code"
> +	depends on VFIO_MDEV
>   	help
>   	  Build a virtual display sample driver for use as a VFIO
>   	  mediated device.  It is a simple framebuffer and supports
>   	  the region display interface (VFIO_GFX_PLANE_TYPE_REGION).
>   
>   config SAMPLE_VFIO_MDEV_MDPY_FB
> -	tristate "Build VFIO mdpy example guest fbdev driver -- loadable module only"
> -	depends on FB && m
> +	tristate "Build VFIO mdpy example guest fbdev driver"
> +	depends on FB
>   	select FB_CFB_FILLRECT
>   	select FB_CFB_COPYAREA
>   	select FB_CFB_IMAGEBLIT
> @@ -208,8 +208,8 @@ config SAMPLE_VFIO_MDEV_MDPY_FB
>   	  Guest fbdev driver for the virtual display sample driver.
>   
>   config SAMPLE_VFIO_MDEV_MBOCHS
> -	tristate "Build VFIO mdpy example mediated device sample code -- loadable modules only"
> -	depends on VFIO_MDEV && m
> +	tristate "Build VFIO mdpy example mediated device sample code"
> +	depends on VFIO_MDEV
>   	select DMA_SHARED_BUFFER
>   	help
>   	  Build a virtual display sample driver for use as a VFIO
