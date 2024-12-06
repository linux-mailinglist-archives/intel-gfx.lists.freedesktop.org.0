Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 404279E977E
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 14:43:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 869DF10E788;
	Mon,  9 Dec 2024 13:43:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hYgGwmue";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 087A410F0AE;
 Fri,  6 Dec 2024 10:35:06 +0000 (UTC)
Received: by mail-lj1-f175.google.com with SMTP id
 38308e7fff4ca-2ffdbc0c103so17160991fa.3; 
 Fri, 06 Dec 2024 02:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1733481304; x=1734086104; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=0XDQJcv7iFgLJ1eWmwMJVBYilr5vQAJLf+vmjZPp3b8=;
 b=hYgGwmuevVmIVOwtmKTtPNYaJtz0OVcEdM1H0ngBnBhq/VTTmXtk8QxnPacTBktbY7
 IoSBMCKxf25ZgEcSCe7A7pX3ddGeOCPt3VTW3VvRMx0kiuLcxvF0PCSnVq/jSJOEOuVU
 dHtaGi+qqwFz/g9TcT5UtMQtdrk3rrfJSyS1xXHG2qLz/wdf2Bsl99tRdsVoKYWoIu13
 3abSLx8IQGOKicwtjYWAikocuJHP3LDGBOac0vvJAzn2+c2hAFDuM1zMAsrVo3GgW9q2
 urT239/ZIXB0Y+wufMLwFRmEu8ioVE7GaE+TK3BnhrPuvs6DY7i10VNnAAxMUvJRIt0t
 OnkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733481304; x=1734086104;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0XDQJcv7iFgLJ1eWmwMJVBYilr5vQAJLf+vmjZPp3b8=;
 b=ZkM4q6b1nv6hytb+uyWq8nSEQLGM/vLLqU57oi4a69s3ynUoLxj1B9vRexJsSGUMz3
 69tN3/Yfmj/rRqPeLu/YiIPKDibggpwLSrQne9CnLbXXTUuVjkN4Q+336EB0HQQxqWzq
 wuZS9cjidZaPuhjnMmum0e/xfTPgAKAE82PhBu9mATvvx7dX+eREXPjzuL2PstjnVj9D
 gx7PxNtESmT1bcxPqjOBdOqS7wxiaQDn3WbwmvSKUyuOH4BYQl9+FAVntnNDd/cXlmEP
 4Ou2T+o+G8JzXOI8TGC91asRq+YWk5v+lDzBEvow009ZH7u1P21mgoLfoFFouqUff3f8
 DM8Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVP4dTEd8MKLCd17qcjZsdlls1jKBoaz80QQLqCtN7VqZEKhw4bcNWseqYr7hVi7urv8T6RSWiMlH4=@lists.freedesktop.org,
 AJvYcCXBefT6breg/d58puTObvCp+1UjkLlpx3QNR0QH4+oWaScGjjgvv91fy87yRASUoIObv6l76UQ64b4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx90JZWCALSy/Z4SpuTjVVLOZnop6AoAqZLhOhVrNqDqU6vle5j
 7/4TChF4pNXnZzImsRBuliPCnIZOWOIwvV5rvJycegO3ktEK0jzDwOxvUTRdbwu+n4tL6atNZkg
 Gnd17moGlhaSFH8godeCI7exzGaxDqWyW5HU=
X-Gm-Gg: ASbGncsTn/L3SIG7hL3/5SArye+b7X0U9wvSNm6GSfZSXUgDKfyEC5GrSReUTEWZJuk
 BO+vhylHGzcBQwBt05c0RS+cbpXOeqTP7Yy/z+yZnADd5WOxYUxE/2cTYUpKw0AAKWw==
X-Google-Smtp-Source: AGHT+IHE+blOmNejIbE2J9tXQkOJ62/o0JX6wKdzlYgRdn3batbpbCG8UAnrCp0EcL4veN1WJdz5TGNsKRD4QUCNwDE=
X-Received: by 2002:a2e:ab0f:0:b0:2ff:c242:29c8 with SMTP id
 38308e7fff4ca-3002fc6695fmr7209701fa.35.1733481303841; Fri, 06 Dec 2024
 02:35:03 -0800 (PST)
MIME-Version: 1.0
References: <SJ1PR11MB6129DFD4D1E8805D9EC930BDB9312@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129DFD4D1E8805D9EC930BDB9312@SJ1PR11MB6129.namprd11.prod.outlook.com>
From: Tamir Duberstein <tamird@gmail.com>
Date: Fri, 6 Dec 2024 05:34:27 -0500
Message-ID: <CAJ-ks9nHr2fCJCbS=wx92Bba1qdmOg8hJvmenjKgEgvgfWL=9Q@mail.gmail.com>
Subject: Re: Regression on linux-next (next-20241203)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, 
 "Saarinen, Jani" <jani.saarinen@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 09 Dec 2024 13:43:28 +0000
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

Hello Chaitanya, my apologies for the breakage and the time spent
tracking it down.

This was found by automation and reported in
https://lore.kernel.org/all/a41eb55f-01b3-4388-a98c-cc0de15179bd@kernel.dk/
and the fix picked up by mm in
https://lore.kernel.org/all/20241206012431.4B593C4CED1@smtp.kernel.org/.

Best.
Tamir
