Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB1266439D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 15:50:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA2CF10E5D9;
	Tue, 10 Jan 2023 14:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2161D10E5D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 14:49:54 +0000 (UTC)
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 30ADipNe024684; Tue, 10 Jan 2023 14:49:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=WPPgsTqVXw3MYWcGCbj/p1qXM+CUpnBLnqM1ocA+3LQ=;
 b=S9lNqo0mPrKZDmiBEfC1yDwHf1DD/vimO1Ta1wWoy46bTFUHoieKCze/h6ba3w0i/M1D
 jP2w4AtdRzxStWeG7jyTkTZLX9tMgXL6TpiAMUt65AOLjRceux7PU4eUd3LVby4cHy+x
 wbwYItggB1Y+ARH/yLmg4IkrNhyUKkqH8NHA4jDmFBpPGGkQXkM1+oqBDiQ2VKAs1Cd6
 rKcZLwLpLtiw/+pcXXAnWi5TaIHBKtaZC2/yaxB+L2uoo5ExcKntcZCoVvjsCLT+OBU/
 7R/V1JpmqRY8KOs2Ks7rN9SxH2ygY42wUil4Py6SW7TFloNiY2FPevflPg/IbXAJEbUb 9Q== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3n19649x3g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 10 Jan 2023 14:49:49 +0000
Received: from m0098420.ppops.net (m0098420.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 30AEKGN9018273;
 Tue, 10 Jan 2023 14:49:48 GMT
Received: from ppma03wdc.us.ibm.com (ba.79.3fa9.ip4.static.sl-reverse.com
 [169.63.121.186])
 by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3n19649x2v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 10 Jan 2023 14:49:48 +0000
Received: from pps.filterd (ppma03wdc.us.ibm.com [127.0.0.1])
 by ppma03wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 30ACI4pc010657;
 Tue, 10 Jan 2023 14:49:48 GMT
Received: from smtprelay05.dal12v.mail.ibm.com ([9.208.130.101])
 by ppma03wdc.us.ibm.com (PPS) with ESMTPS id 3my0c7a96n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 10 Jan 2023 14:49:48 +0000
Received: from smtpav04.wdc07v.mail.ibm.com (smtpav04.wdc07v.mail.ibm.com
 [10.39.53.231])
 by smtprelay05.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 30AEnkcm65732896
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Jan 2023 14:49:47 GMT
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id AB27658050;
 Tue, 10 Jan 2023 14:49:46 +0000 (GMT)
Received: from smtpav04.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 813555805E;
 Tue, 10 Jan 2023 14:49:45 +0000 (GMT)
Received: from [9.160.171.221] (unknown [9.160.171.221])
 by smtpav04.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 10 Jan 2023 14:49:45 +0000 (GMT)
Message-ID: <625de375-562d-3a72-830b-4c4835ab93e6@linux.ibm.com>
Date: Tue, 10 Jan 2023 09:49:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
References: <20230110091009.474427-1-hch@lst.de>
 <20230110091009.474427-5-hch@lst.de>
From: Anthony Krowiak <akrowiak@linux.ibm.com>
In-Reply-To: <20230110091009.474427-5-hch@lst.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: KanNLKOwomRin1ekOSHGZJTf_TGnxGqB
X-Proofpoint-ORIG-GUID: CeWU-G6IoEbhfJ0tOVAv6T45AV40UWsq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2023-01-10_06,2023-01-10_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0
 lowpriorityscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 mlxlogscore=999 adultscore=0 phishscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2212070000 definitions=main-2301100090
Subject: Re: [Intel-gfx] [PATCH 4/4] vfio-mdev: remove an non-existing
 driver from vfio-mediated-device
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

LGTM

Reviewed-by: Tony Krowiak <akrowiak@linux.ibm.com>

On 1/10/23 4:10 AM, Christoph Hellwig wrote:
> The nvidia mdev driver does not actually exist anywhere in the tree.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   Documentation/driver-api/vfio-mediated-device.rst | 8 +-------
>   1 file changed, 1 insertion(+), 7 deletions(-)
>
> diff --git a/Documentation/driver-api/vfio-mediated-device.rst b/Documentation/driver-api/vfio-mediated-device.rst
> index d4267243b4f525..bbd548b66b4255 100644
> --- a/Documentation/driver-api/vfio-mediated-device.rst
> +++ b/Documentation/driver-api/vfio-mediated-device.rst
> @@ -60,7 +60,7 @@ devices as examples, as these devices are the first devices to use this module::
>        |   mdev.ko     |
>        | +-----------+ |  mdev_register_parent() +--------------+
>        | |           | +<------------------------+              |
> -     | |           | |                         |  nvidia.ko   |<-> physical
> +     | |           | |                         | ccw_device.ko|<-> physical
>        | |           | +------------------------>+              |    device
>        | |           | |        callbacks        +--------------+
>        | | Physical  | |
> @@ -69,12 +69,6 @@ devices as examples, as these devices are the first devices to use this module::
>        | |           | |                         |  i915.ko     |<-> physical
>        | |           | +------------------------>+              |    device
>        | |           | |        callbacks        +--------------+
> -     | |           | |
> -     | |           | |  mdev_register_parent() +--------------+
> -     | |           | +<------------------------+              |
> -     | |           | |                         | ccw_device.ko|<-> physical
> -     | |           | +------------------------>+              |    device
> -     | |           | |        callbacks        +--------------+
>        | +-----------+ |
>        +---------------+
>   
