Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D71B4FBD8
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 14:53:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A1FC10E6FA;
	Tue,  9 Sep 2025 12:53:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gfQSzuCK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F419510E6FA
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 12:53:16 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-b04abcc1356so499454966b.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Sep 2025 05:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757422395; x=1758027195; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=QZ0/qU2As+sb46Itn/SYSRGxymKfCvbb2bsh3JJmGzk=;
 b=gfQSzuCKj+zEOAl45oMqW125U31wn3xvYCFSKxPPVea5t5QPbo8KE9EoX5rUiZr5Sz
 VxSluI26QLMpaqgcK/YaHwGSRBHDwNdPkd8FDQ9QzuuIvI0jXg35IbivqYtb9tBhSChp
 QLc+oesUf3aDPCHkQOIT1h9lUeC7jCLHva0x+ivKxoumUzCpFXuiR++ZxQQyYk1CyRfH
 OCe06N4hxhGaWyHzR0xCAIa/UaIhZzKIWnF5rvnDooP7WhFjGyNrXYUM+9eLPn8aPSw6
 RskdH5ZC03/IYSjTBarZlE6gg9WgVQmDmRrWpKkBjqT7BzWTEzbZ69TDNZhQDTar6PP8
 VujQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757422395; x=1758027195;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=QZ0/qU2As+sb46Itn/SYSRGxymKfCvbb2bsh3JJmGzk=;
 b=UpNAWNxaXSE+2QnxzHgoaJhRDeHTMaqkRiofrtI7DZMfRMCl2FHMvAh10vcUdAkj19
 pxi8RT/VpBAoOezq3FDcR2ijHgurGzrlvdSNdGZPygzMDKyoqyxVU5usJhUl4JJ5KW7h
 ac/p/nwdNgmWLwV9YeScOTcbiL6+BvZYO//PsSXUgZwpBw+Sv6XdOq0r1mxdMSpnuGWG
 /xdnjVWptm7j5yLAyYxsdoAc7D+k4RB8KyDeJZZU0z8Rg5WCWcxcoSj+/Ki2xnHJ6lJK
 F7Kt+Ke38uEsZzY3vdeualGhjht2iTy5rbbm+Gtsn+LjZfPLWI4DGdZ/qlkI4VTYZscT
 eQSg==
X-Gm-Message-State: AOJu0YyxYjl7qZmfuz/DIFYN+5GzqkWSMnZ4TSVtIUIONkGAxmSx+AyM
 cAwjjkXOvpYvE7GYXuUl4PqYOwCXPyAK3zuCYdzWzg/s4wrLQJ6dOZVX
X-Gm-Gg: ASbGncu3RX+3MUQqS306asTCYQwIqOC71BWp+SFBYeAUfk8vS/habUUsK495fzk7gPQ
 9/mRzYTcWcTbr7anUmwIrdaqTCCuKYyXYuDiJPuU4nDhZvM8Weo6BKDqA1W/n3rXwcQsMtD1N/p
 jVoVTbr25i/KrgeKi425Ql6UK6qQkyp7DuoNL4kfEe3TE6/QPYsBH2VvNmLkOIkFz8haG9nyO9k
 Ya6L2kNJzjkkGi1B+5r5WUmnXZ76bhEyDWB8s/ut1NB5zeKHOQ9BGZUezL5DSny/+CE50pOlld3
 5q589uD3N//QxSCtTCi2tkCDnJgAhQuAIVOdl56VO8/oZi81hsfzLE9Uv64P+O8OVrtASQkS7gp
 Hj+nx5aVkCiGm8A/f004mt0lSOkDIgMtVVDlXk5yc40drFbVIz5oie3+ZlT+JOZUNsxOcKpV/s+
 zALgMapns=
X-Google-Smtp-Source: AGHT+IGxEtf2DfEpOBf/ONTUbrwT8Fe5Amc8y6dyOeN/9A44OEX8Uq4KiQwL5vRsLH6WxASJPG33Jg==
X-Received: by 2002:a17:907:9409:b0:afe:dbfb:b120 with SMTP id
 a640c23a62f3a-b04b1459740mr989565166b.8.1757422395054; 
 Tue, 09 Sep 2025 05:53:15 -0700 (PDT)
Received: from [192.168.0.51] (217-62-96-139.cable.dynamic.v4.ziggo.nl.
 [217.62.96.139]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b02152cc1b8sm2426241466b.36.2025.09.09.05.53.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Sep 2025 05:53:14 -0700 (PDT)
Message-ID: <f6af687c-8adf-4714-bd95-ee64589760b0@gmail.com>
Date: Tue, 9 Sep 2025 14:53:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
From: =?UTF-8?Q?Ren=C3=A9_Herman?= <rene.herman@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
 <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
 <b2250460639d81b79f15995c9769eac21849766b@intel.com>
 <d9d1a7ff-307a-4964-98bf-209781ffc6fe@gmail.com>
 <f9b10acb19bbe19813b4bebd9ac666b397d9c7c0@intel.com>
 <9436a617-ae53-4702-9ac3-27d9c1267626@gmail.com>
 <57adde32e4fa7fc4c74d8cba39249af1399de609@intel.com>
 <6020c152-9de5-40cc-aedf-7024df45d27c@gmail.com>
 <2d1e5f5e70d67361e3415dbbd764bfc0a4ff5a17@intel.com>
 <9b7e2c8a-e728-4d10-8787-76d4834d1e26@gmail.com>
 <6f55d851-53ac-403b-b2e0-834df94b16bf@gmail.com>
 <d0542c33-e4ce-493b-8e08-78c3b7c3ce43@gmail.com>
Content-Language: en-US
In-Reply-To: <d0542c33-e4ce-493b-8e08-78c3b7c3ce43@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 28-08-2025 08:10, René Herman wrote:

> On 21-08-2025 21:24, René Herman wrote:
> 
>> We managed to install the 6.16 mainline kernel and generate the 
>> requested dmesg and VBT logs, with the requested "drm.debug=0xe 
>> log_buf_len=4M ignore_loglevel" kernel parameters. They are attached at
>>
>> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3441#note_3064300
>>
>> Hope this helps. Many thanks for looking.
<ping>

Regards,
Rene
